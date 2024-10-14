import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/client/network_service.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';

abstract class MovieRemoteDataSource {
  Future<Resource<List<MovieEntity>>> getMovies();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  NetworkService networkService;

  MovieRemoteDataSourceImpl({required this.networkService});

  @override
  Future<Resource<List<MovieEntity>>> getMovies() async {
    return ResourceSuccess([
      MovieEntity(id: "werwe", title: "erwer", body: "werwerw"),
      MovieEntity(id: "werwe", title: "erwer", body: "werwerw"),
      MovieEntity(id: "werwe", title: "erwer", body: "werwerw")
    ]);
  }
}
