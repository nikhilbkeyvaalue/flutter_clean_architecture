// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListDto _$MovieListDtoFromJson(Map<String, dynamic> json) {
  return _MovieListDto.fromJson(json);
}

/// @nodoc
mixin _$MovieListDto {
  int? get page => throw _privateConstructorUsedError;
  set page(int? value) => throw _privateConstructorUsedError;
  List<MovieListDtoResults?>? get results => throw _privateConstructorUsedError;
  set results(List<MovieListDtoResults?>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  set totalPages(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  set totalResults(int? value) => throw _privateConstructorUsedError;

  /// Serializes this MovieListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListDtoCopyWith<MovieListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListDtoCopyWith<$Res> {
  factory $MovieListDtoCopyWith(
          MovieListDto value, $Res Function(MovieListDto) then) =
      _$MovieListDtoCopyWithImpl<$Res, MovieListDto>;
  @useResult
  $Res call(
      {int? page,
      List<MovieListDtoResults?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class _$MovieListDtoCopyWithImpl<$Res, $Val extends MovieListDto>
    implements $MovieListDtoCopyWith<$Res> {
  _$MovieListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieListDtoResults?>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListDtoImplCopyWith<$Res>
    implements $MovieListDtoCopyWith<$Res> {
  factory _$$MovieListDtoImplCopyWith(
          _$MovieListDtoImpl value, $Res Function(_$MovieListDtoImpl) then) =
      __$$MovieListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<MovieListDtoResults?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});
}

/// @nodoc
class __$$MovieListDtoImplCopyWithImpl<$Res>
    extends _$MovieListDtoCopyWithImpl<$Res, _$MovieListDtoImpl>
    implements _$$MovieListDtoImplCopyWith<$Res> {
  __$$MovieListDtoImplCopyWithImpl(
      _$MovieListDtoImpl _value, $Res Function(_$MovieListDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MovieListDtoImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieListDtoResults?>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListDtoImpl implements _MovieListDto {
  _$MovieListDtoImpl(
      {this.page,
      this.results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults});

  factory _$MovieListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListDtoImplFromJson(json);

  @override
  int? page;
  @override
  List<MovieListDtoResults?>? results;
  @override
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? totalResults;

  @override
  String toString() {
    return 'MovieListDto(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  /// Create a copy of MovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListDtoImplCopyWith<_$MovieListDtoImpl> get copyWith =>
      __$$MovieListDtoImplCopyWithImpl<_$MovieListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListDtoImplToJson(
      this,
    );
  }
}

abstract class _MovieListDto implements MovieListDto {
  factory _MovieListDto(
      {int? page,
      List<MovieListDtoResults?>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults}) = _$MovieListDtoImpl;

  factory _MovieListDto.fromJson(Map<String, dynamic> json) =
      _$MovieListDtoImpl.fromJson;

  @override
  int? get page;
  set page(int? value);
  @override
  List<MovieListDtoResults?>? get results;
  set results(List<MovieListDtoResults?>? value);
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @JsonKey(name: 'total_pages')
  set totalPages(int? value);
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @JsonKey(name: 'total_results')
  set totalResults(int? value);

  /// Create a copy of MovieListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListDtoImplCopyWith<_$MovieListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieListDtoResults _$MovieListDtoResultsFromJson(Map<String, dynamic> json) {
  return _MovieListDtoResults.fromJson(json);
}

/// @nodoc
mixin _$MovieListDtoResults {
  bool? get adult => throw _privateConstructorUsedError;
  set adult(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  set backdropPath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  set genreIds(List<int?>? value) => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  set originalLanguage(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  set originalTitle(String? value) => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  set overview(String? value) => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  set popularity(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  set posterPath(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  set releaseDate(String? value) => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  set title(String? value) => throw _privateConstructorUsedError;
  bool? get video => throw _privateConstructorUsedError;
  set video(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  set voteAverage(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  set voteCount(int? value) => throw _privateConstructorUsedError;

  /// Serializes this MovieListDtoResults to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListDtoResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListDtoResultsCopyWith<MovieListDtoResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListDtoResultsCopyWith<$Res> {
  factory $MovieListDtoResultsCopyWith(
          MovieListDtoResults value, $Res Function(MovieListDtoResults) then) =
      _$MovieListDtoResultsCopyWithImpl<$Res, MovieListDtoResults>;
  @useResult
  $Res call(
      {bool? adult,
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
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$MovieListDtoResultsCopyWithImpl<$Res, $Val extends MovieListDtoResults>
    implements $MovieListDtoResultsCopyWith<$Res> {
  _$MovieListDtoResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListDtoResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListDtoResultsImplCopyWith<$Res>
    implements $MovieListDtoResultsCopyWith<$Res> {
  factory _$$MovieListDtoResultsImplCopyWith(_$MovieListDtoResultsImpl value,
          $Res Function(_$MovieListDtoResultsImpl) then) =
      __$$MovieListDtoResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
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
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$MovieListDtoResultsImplCopyWithImpl<$Res>
    extends _$MovieListDtoResultsCopyWithImpl<$Res, _$MovieListDtoResultsImpl>
    implements _$$MovieListDtoResultsImplCopyWith<$Res> {
  __$$MovieListDtoResultsImplCopyWithImpl(_$MovieListDtoResultsImpl _value,
      $Res Function(_$MovieListDtoResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListDtoResults
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$MovieListDtoResultsImpl(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListDtoResultsImpl implements _MovieListDtoResults {
  _$MovieListDtoResultsImpl(
      {this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'genre_ids') this.genreIds,
      this.id,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      this.overview,
      this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'release_date') this.releaseDate,
      this.title,
      this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount});

  factory _$MovieListDtoResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListDtoResultsImplFromJson(json);

  @override
  bool? adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? genreIds;
  @override
  int? id;
  @override
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @override
  String? overview;
  @override
  double? popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @override
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @override
  String? title;
  @override
  bool? video;
  @override
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? voteCount;

  @override
  String toString() {
    return 'MovieListDtoResults(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  /// Create a copy of MovieListDtoResults
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListDtoResultsImplCopyWith<_$MovieListDtoResultsImpl> get copyWith =>
      __$$MovieListDtoResultsImplCopyWithImpl<_$MovieListDtoResultsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListDtoResultsImplToJson(
      this,
    );
  }
}

abstract class _MovieListDtoResults implements MovieListDtoResults {
  factory _MovieListDtoResults(
      {bool? adult,
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
      @JsonKey(name: 'vote_count') int? voteCount}) = _$MovieListDtoResultsImpl;

  factory _MovieListDtoResults.fromJson(Map<String, dynamic> json) =
      _$MovieListDtoResultsImpl.fromJson;

  @override
  bool? get adult;
  set adult(bool? value);
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @JsonKey(name: 'backdrop_path')
  set backdropPath(String? value);
  @override
  @JsonKey(name: 'genre_ids')
  List<int?>? get genreIds;
  @JsonKey(name: 'genre_ids')
  set genreIds(List<int?>? value);
  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @JsonKey(name: 'original_language')
  set originalLanguage(String? value);
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @JsonKey(name: 'original_title')
  set originalTitle(String? value);
  @override
  String? get overview;
  set overview(String? value);
  @override
  double? get popularity;
  set popularity(double? value);
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @JsonKey(name: 'poster_path')
  set posterPath(String? value);
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @JsonKey(name: 'release_date')
  set releaseDate(String? value);
  @override
  String? get title;
  set title(String? value);
  @override
  bool? get video;
  set video(bool? value);
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @JsonKey(name: 'vote_average')
  set voteAverage(double? value);
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @JsonKey(name: 'vote_count')
  set voteCount(int? value);

  /// Create a copy of MovieListDtoResults
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListDtoResultsImplCopyWith<_$MovieListDtoResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
