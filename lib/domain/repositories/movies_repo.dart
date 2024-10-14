import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';

abstract class MoviesRepo {
  Future<Resource<List<MovieEntity>>> getMovies();
}
