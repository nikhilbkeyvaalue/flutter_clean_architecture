import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/models/env_model.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@module
abstract class AppModule {
  @injectable
  Dio providesDio({required EnvModel envModel}) => Dio(
        BaseOptions(
          baseUrl: envModel.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

  @preResolve
  Future<EnvModel> loadEnvFile() async {
    await dotenv.load();
    return EnvModel(
        baseUrl: dotenv.env['BASE_URL'] ?? '',
        apiKey: dotenv.env['API_KEY'] ?? '');
  }
}
