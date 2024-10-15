import 'package:flutter_clean_architecture/core/models/resource.dart';
import 'package:flutter_clean_architecture/domain/movies/entities/movie_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_list_state.freezed.dart';
@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState({
    @Default(ResourceInitial()) Resource<List<MovieEntity>> movies,
  }) = _MovieListState;

  factory MovieListState.initial() {
    return MovieListState();
  }
}
