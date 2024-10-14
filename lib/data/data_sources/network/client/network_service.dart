import 'package:flutter_clean_architecture/data/data_sources/network/client/api_request_representable.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_response.dart';


abstract class NetworkService {
  Duration? requestTimeOut;

  Future<APIResponse> request(APIRequestRepresentable apiRequestRepresentable);

  Future<APIResponse> post(APIRequestRepresentable apiRequestRepresentable);

  Future<APIResponse> get(APIRequestRepresentable apiRequestRepresentable);

  Future<APIResponse> patch(APIRequestRepresentable apiRequestRepresentable);

  Future<APIResponse> put(APIRequestRepresentable apiRequestRepresentable);

  Future<APIResponse> delete(APIRequestRepresentable apiRequestRepresentable);

}
