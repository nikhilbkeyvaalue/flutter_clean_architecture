import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/app_utils/emit_resource_state.dart';
import 'package:flutter_clean_architecture/domain/movies/use_cases/get_movies_use_case.dart';
import 'package:flutter_clean_architecture/presentation/movie_list/movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  GetMoviesUseCase _getMoviesUseCase;

  MovieListCubit(this._getMoviesUseCase) : super(MovieListState.initial()) {
    getMovies();
  }

  Future<void> getMovies() async {
    emitResourceState(
            () => _getMoviesUseCase(), (result) => emit(state.copyWith(movies: result)));
  }
}
