import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/data/data_sources/network/remote_sources/movie_remote_data_source.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/repositories/movies_repo.dart';

class MovieRepoImpl extends MoviesRepo {
  final MovieRemoteDataSource _movieRemoteDataSource;

  MovieRepoImpl(this._movieRemoteDataSource);

  @override
  Future<Resource<List<MovieEntity>>> getMovies({bool refresh = false}) async {
    final res = await _movieRemoteDataSource.getMovies();
    return res;
  }
}
