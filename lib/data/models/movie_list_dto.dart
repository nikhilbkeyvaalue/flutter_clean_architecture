import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list_dto.freezed.dart';

part 'movie_list_dto.g.dart';

@unfreezed
class MovieListDto with _$MovieListDto {
  factory MovieListDto({
    int? page,
    List<MovieListDtoResults?>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _MovieListDto;

  factory MovieListDto.fromJson(Map<String, dynamic> json) =>
      _$MovieListDtoFromJson(json);
}

@unfreezed
class MovieListDtoResults with _$MovieListDtoResults {
  factory MovieListDtoResults({
    bool? adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int?>? genreIds,
    int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    String? overview,
    double? popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    String? title,
    bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieListDtoResults;

  factory MovieListDtoResults.fromJson(Map<String, dynamic> json) =>
      _$MovieListDtoResultsFromJson(json);
}
