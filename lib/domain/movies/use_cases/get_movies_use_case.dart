import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/domain/movies/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/movies/repositories/movies_repo.dart';


class GetMoviesUseCase {
  final MoviesRepo  _moviesRepository;

  GetMoviesUseCase(this._moviesRepository);

  Future<Resource<List<MovieEntity>>> call() {
    return _moviesRepository.getMovies();
  }
}
