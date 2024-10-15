import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/remote_sources/movie_remote_data_source.dart';
import 'package:flutter_clean_architecture/domain/movies/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/movies/repositories/movies_repo.dart';

class MovieRepoImpl extends MoviesRepo {
  MovieRemoteDataSource _movieRemoteDataSource;

  MovieRepoImpl(this._movieRemoteDataSource);

  @override
  Future<Resource<List<MovieEntity>>> getMovies() {
    return _movieRemoteDataSource.getMovies();
  }
}
