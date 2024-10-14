import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';
import 'package:flutter_clean_architecture/domain/repositories/movies_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetMoviesUseCase {
  final MoviesRepo  _moviesRepository;

  GetMoviesUseCase(this._moviesRepository);

  Future<Resource<List<MovieEntity>>> call() {
    return _moviesRepository.getMovies();
  }
}
