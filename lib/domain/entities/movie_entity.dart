import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_entity.freezed.dart';


@freezed
class MovieEntity with _$MovieEntity {
  const factory MovieEntity({
    required String id,
    required String title,
    required String body,
    String? releaseYear,
    String? imageCover,
    String? posterPath,
    double? rating,
  }) = _MovieEntity;

  const MovieEntity._();

  String get titleWithYear => "$title ($releaseYear)";

}
