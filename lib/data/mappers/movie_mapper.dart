import 'package:flutter_clean_architecture/data/models/movie_list_dto.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_entity.dart';

class MovieMappers {
  static List<MovieEntity> movieListEntityFromDTO(MovieListDto movieListDto) {
    return movieListDto.results
            ?.map((e) => MovieEntity(
                id: (e?.id).toString(),
                title: e?.title ?? "",
                rating: e?.voteAverage?.roundToDouble() ?? 0.0,
                posterPath:
                    "https://image.tmdb.org/t/p/original${e?.posterPath}",
                body: e?.overview ?? ""))
            .toList() ??
        [];
  }
}
