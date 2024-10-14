import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/app_utils/logger.dart';
import 'package:flutter_clean_architecture/core/errors/exceptions/network_exceptions.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_request_representable.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_response.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/dio/dio_interceptors/log_interceptor.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/network_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NetworkService)
class DioNetWorkService extends NetworkService {
  DioNetWorkService({
    required Dio client,
  })  : _client = client,
        super() {
    initializeDio();
  }

  /// The [DioNetWorkService] constructor...

  bool socketErrorOccurred = false;

  /// Initializes Dio by adding interceptors for token refreshing and logging.
  void initializeDio() {
    _client.interceptors.addAll(
      [prettyDioLogger],
    );
  }

  final Dio _client;

  /// Sends an HTTP request and returns the response.
  ///
  /// If the request fails due to a timeout,
  /// a [TimeOutException] is thrown.
  /// If the request fails due to a socket exception,
  /// a [FetchDataException] with
  /// the message 'No Internet connection' is thrown.
  /// If the request fails due to a Dio error,
  /// and the response is handled using the
  /// [handleDioExceptions] function.
  /// If the request fails due to any other
  /// error, a [FetchDataException] with an
  /// empty message is thrown.
  /// Sends an API request using Dio and returns the response.
  ///
  /// Takes an `APIRequestRepresentable` object as input.
  ///
  /// Throws exceptions on network errors or if the response contains an error.

  @override
  Future<APIResponse> request(APIRequestRepresentable requestReceived) async {
    try {
      var request = requestReceived;
      final token = <String, String>{};
      request = request.copyWith(
        headers: {...?requestReceived.headers, ...token, ...{}},
      );

      if (socketErrorOccurred) {
        /// if a socket error occurred earlier then reset the dio
        initializeDio();
        socketErrorOccurred = false;
      }
      appLogger
        ..d('REQUEST DETAILS')
        ..d('REQUEST DETAILS')
        ..d(requestReceived.toString())
        ..d(_client.options.queryParameters)
        ..d(_client.options.baseUrl)
        ..d(_client.options.baseUrl);

      // Send the request using Dio
      final startTime = DateTime.now();
      final response = await _client.request(
        request.url,
        options: Options(
          method: request.method.string,
          headers: request.headers,
          persistentConnection: true,
          extra: {
            'skipAuthHeaders': request.skipAuthHeaders,
          },
        ),
        data: request.body,
        queryParameters: request.query,
      );
      appLogger
        ..d(
          'Time taken to get response${request.url}'
          ' ${DateTime.now().difference(startTime).inMilliseconds} ms',
        )
        ..d(response.data.toString())
        ..d(response.realUri.path);
      // Return the response
      return mapToAPIResponse(response);
    } on TimeoutException catch (_) {
      // Catch timeout exceptions
      //and throw a custom TimeOutException
      throw FetchDataException.networkException();
    } on SocketException {
      // Catch SocketException (no internet connection)
      // and throw a custom FetchDataException
      throw FetchDataException.networkException();
    } on DioException catch (e) {
      throw FetchDataException.networkException();
    } catch (_) {
      // Catch any other exception and throw a custom FetchDataException
      throw FetchDataException.networkException();
    }
  }

  /// Maps Dio response to APIResponse.
  APIResponse<Object> mapToAPIResponse(Response? response) {
    return APIResponse(
      requestOptions: response?.requestOptions ?? RequestOptions(),
      data: response?.data,
      headers: response?.headers,
      statusCode: response?.statusCode,
      statusMessage: response?.statusMessage,
    );
  }

  @override
  Future<APIResponse> get(
    APIRequestRepresentable apiRequestRepresentable,
  ) async {
    return request(
      apiRequestRepresentable.copyWith(method: HTTPMethod.get),
    );
  }

  @override
  Future<APIResponse> patch(APIRequestRepresentable apiRequestRepresentable) {
    return request(apiRequestRepresentable.copyWith(method: HTTPMethod.patch));
  }

  @override
  Future<APIResponse> put(APIRequestRepresentable apiRequestRepresentable) {
    return request(apiRequestRepresentable.copyWith(method: HTTPMethod.put));
  }

  @override
  Future<APIResponse> post(APIRequestRepresentable apiRequestRepresentable) {
    return request(apiRequestRepresentable.copyWith(method: HTTPMethod.post));
  }

  @override
  Future<APIResponse> delete(APIRequestRepresentable apiRequestRepresentable) {
    return request(apiRequestRepresentable.copyWith(method: HTTPMethod.delete));
  }

}
