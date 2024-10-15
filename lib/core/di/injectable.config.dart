// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_clean_architecture/core/di/app_module.dart' as _i719;
import 'package:flutter_clean_architecture/core/models/env_model.dart' as _i129;
import 'package:flutter_clean_architecture/data/data_sources/network/client/dio/dio_network_service.dart'
    as _i1032;
import 'package:flutter_clean_architecture/data/data_sources/network/client/network_service.dart'
    as _i483;
import 'package:flutter_clean_architecture/data/data_sources/network/remote_sources/movie_remote_data_source.dart'
    as _i1049;
import 'package:flutter_clean_architecture/data/repositories/movie_repo_impl.dart'
    as _i689;
import 'package:flutter_clean_architecture/domain/repositories/movies_repo.dart'
    as _i692;
import 'package:flutter_clean_architecture/domain/use_cases/get_movies_use_case.dart'
    as _i728;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i129.EnvModel>(
      () => appModule.loadEnvFile(),
      preResolve: true,
    );
    gh.factory<_i361.Dio>(
        () => appModule.providesDio(envModel: gh<_i129.EnvModel>()));
    gh.factory<_i483.NetworkService>(
        () => _i1032.DioNetWorkService(client: gh<_i361.Dio>()));
    gh.factory<_i1049.MovieRemoteDataSource>(
        () => _i1049.MovieRemoteDataSourceImpl(
              networkService: gh<_i483.NetworkService>(),
              envModel: gh<_i129.EnvModel>(),
            ));
    gh.factory<_i692.MoviesRepo>(
        () => _i689.MovieRepoImpl(gh<_i1049.MovieRemoteDataSource>()));
    gh.factory<_i728.GetMoviesUseCase>(
        () => _i728.GetMoviesUseCase(gh<_i692.MoviesRepo>()));
    return this;
  }
}

class _$AppModule extends _i719.AppModule {}
