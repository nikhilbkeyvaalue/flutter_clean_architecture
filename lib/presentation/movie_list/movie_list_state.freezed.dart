// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieListState {
  Resource<List<MovieEntity>> get movies => throw _privateConstructorUsedError;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res, MovieListState>;
  @useResult
  $Res call({Resource<List<MovieEntity>> movies});
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res, $Val extends MovieListState>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_value.copyWith(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Resource<List<MovieEntity>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListStateImplCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory _$$MovieListStateImplCopyWith(_$MovieListStateImpl value,
          $Res Function(_$MovieListStateImpl) then) =
      __$$MovieListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Resource<List<MovieEntity>> movies});
}

/// @nodoc
class __$$MovieListStateImplCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res, _$MovieListStateImpl>
    implements _$$MovieListStateImplCopyWith<$Res> {
  __$$MovieListStateImplCopyWithImpl(
      _$MovieListStateImpl _value, $Res Function(_$MovieListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$MovieListStateImpl(
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Resource<List<MovieEntity>>,
    ));
  }
}

/// @nodoc

class _$MovieListStateImpl implements _MovieListState {
  const _$MovieListStateImpl({this.movies = const ResourceInitial()});

  @override
  @JsonKey()
  final Resource<List<MovieEntity>> movies;

  @override
  String toString() {
    return 'MovieListState(movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListStateImpl &&
            (identical(other.movies, movies) || other.movies == movies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movies);

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListStateImplCopyWith<_$MovieListStateImpl> get copyWith =>
      __$$MovieListStateImplCopyWithImpl<_$MovieListStateImpl>(
          this, _$identity);
}

abstract class _MovieListState implements MovieListState {
  const factory _MovieListState({final Resource<List<MovieEntity>> movies}) =
      _$MovieListStateImpl;

  @override
  Resource<List<MovieEntity>> get movies;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListStateImplCopyWith<_$MovieListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
