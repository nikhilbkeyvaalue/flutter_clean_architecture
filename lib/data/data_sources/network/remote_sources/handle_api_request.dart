import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/api_response.dart';

Future<Resource<R>> handleApiRequest<T, R>(
    Future<APIResponse> apiRequest,
    T Function(Map<String, dynamic>) fromJson,  // Function to parse JSON to DTO
    R Function(T) mapper,  // Function to map DTO to final response type
    ) async {
  try {
    final res = await apiRequest;

    if (res.statusCode == 200) {
      final dto = fromJson(res.data);  // Convert JSON to DTO
      final result = mapper(dto);  // Map DTO to the desired type
      return Resource.success(result);  // Return success with mapped result
    } else {
      return Resource.error('Error: ${res.statusCode}');
    }
  } catch (e) {
    return Resource.error('Exception: $e');
  }
}
