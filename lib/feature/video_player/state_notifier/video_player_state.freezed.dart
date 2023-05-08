// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isVideoPlaying) success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isVideoPlaying)? success,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isVideoPlaying)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateInitial value) initial,
    required TResult Function(VideoPlayerStateLoading value) loading,
    required TResult Function(VideoPlayerStateSuccess value) success,
    required TResult Function(VideoPlayerStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateInitial value)? initial,
    TResult? Function(VideoPlayerStateLoading value)? loading,
    TResult? Function(VideoPlayerStateSuccess value)? success,
    TResult? Function(VideoPlayerStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateInitial value)? initial,
    TResult Function(VideoPlayerStateLoading value)? loading,
    TResult Function(VideoPlayerStateSuccess value)? success,
    TResult Function(VideoPlayerStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VideoPlayerStateInitialCopyWith<$Res> {
  factory _$$VideoPlayerStateInitialCopyWith(_$VideoPlayerStateInitial value,
          $Res Function(_$VideoPlayerStateInitial) then) =
      __$$VideoPlayerStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerStateInitialCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateInitial>
    implements _$$VideoPlayerStateInitialCopyWith<$Res> {
  __$$VideoPlayerStateInitialCopyWithImpl(_$VideoPlayerStateInitial _value,
      $Res Function(_$VideoPlayerStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerStateInitial implements VideoPlayerStateInitial {
  const _$VideoPlayerStateInitial();

  @override
  String toString() {
    return 'VideoPlayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isVideoPlaying) success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isVideoPlaying)? success,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isVideoPlaying)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateInitial value) initial,
    required TResult Function(VideoPlayerStateLoading value) loading,
    required TResult Function(VideoPlayerStateSuccess value) success,
    required TResult Function(VideoPlayerStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateInitial value)? initial,
    TResult? Function(VideoPlayerStateLoading value)? loading,
    TResult? Function(VideoPlayerStateSuccess value)? success,
    TResult? Function(VideoPlayerStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateInitial value)? initial,
    TResult Function(VideoPlayerStateLoading value)? loading,
    TResult Function(VideoPlayerStateSuccess value)? success,
    TResult Function(VideoPlayerStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateInitial implements VideoPlayerState {
  const factory VideoPlayerStateInitial() = _$VideoPlayerStateInitial;
}

/// @nodoc
abstract class _$$VideoPlayerStateLoadingCopyWith<$Res> {
  factory _$$VideoPlayerStateLoadingCopyWith(_$VideoPlayerStateLoading value,
          $Res Function(_$VideoPlayerStateLoading) then) =
      __$$VideoPlayerStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerStateLoadingCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateLoading>
    implements _$$VideoPlayerStateLoadingCopyWith<$Res> {
  __$$VideoPlayerStateLoadingCopyWithImpl(_$VideoPlayerStateLoading _value,
      $Res Function(_$VideoPlayerStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerStateLoading implements VideoPlayerStateLoading {
  const _$VideoPlayerStateLoading();

  @override
  String toString() {
    return 'VideoPlayerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isVideoPlaying) success,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isVideoPlaying)? success,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isVideoPlaying)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateInitial value) initial,
    required TResult Function(VideoPlayerStateLoading value) loading,
    required TResult Function(VideoPlayerStateSuccess value) success,
    required TResult Function(VideoPlayerStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateInitial value)? initial,
    TResult? Function(VideoPlayerStateLoading value)? loading,
    TResult? Function(VideoPlayerStateSuccess value)? success,
    TResult? Function(VideoPlayerStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateInitial value)? initial,
    TResult Function(VideoPlayerStateLoading value)? loading,
    TResult Function(VideoPlayerStateSuccess value)? success,
    TResult Function(VideoPlayerStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateLoading implements VideoPlayerState {
  const factory VideoPlayerStateLoading() = _$VideoPlayerStateLoading;
}

/// @nodoc
abstract class _$$VideoPlayerStateSuccessCopyWith<$Res> {
  factory _$$VideoPlayerStateSuccessCopyWith(_$VideoPlayerStateSuccess value,
          $Res Function(_$VideoPlayerStateSuccess) then) =
      __$$VideoPlayerStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVideoPlaying});
}

/// @nodoc
class __$$VideoPlayerStateSuccessCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateSuccess>
    implements _$$VideoPlayerStateSuccessCopyWith<$Res> {
  __$$VideoPlayerStateSuccessCopyWithImpl(_$VideoPlayerStateSuccess _value,
      $Res Function(_$VideoPlayerStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVideoPlaying = null,
  }) {
    return _then(_$VideoPlayerStateSuccess(
      null == isVideoPlaying
          ? _value.isVideoPlaying
          : isVideoPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateSuccess implements VideoPlayerStateSuccess {
  const _$VideoPlayerStateSuccess(this.isVideoPlaying);

  @override
  final bool isVideoPlaying;

  @override
  String toString() {
    return 'VideoPlayerState.success(isVideoPlaying: $isVideoPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateSuccess &&
            (identical(other.isVideoPlaying, isVideoPlaying) ||
                other.isVideoPlaying == isVideoPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVideoPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateSuccessCopyWith<_$VideoPlayerStateSuccess> get copyWith =>
      __$$VideoPlayerStateSuccessCopyWithImpl<_$VideoPlayerStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isVideoPlaying) success,
    required TResult Function() failed,
  }) {
    return success(isVideoPlaying);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isVideoPlaying)? success,
    TResult? Function()? failed,
  }) {
    return success?.call(isVideoPlaying);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isVideoPlaying)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isVideoPlaying);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateInitial value) initial,
    required TResult Function(VideoPlayerStateLoading value) loading,
    required TResult Function(VideoPlayerStateSuccess value) success,
    required TResult Function(VideoPlayerStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateInitial value)? initial,
    TResult? Function(VideoPlayerStateLoading value)? loading,
    TResult? Function(VideoPlayerStateSuccess value)? success,
    TResult? Function(VideoPlayerStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateInitial value)? initial,
    TResult Function(VideoPlayerStateLoading value)? loading,
    TResult Function(VideoPlayerStateSuccess value)? success,
    TResult Function(VideoPlayerStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateSuccess implements VideoPlayerState {
  const factory VideoPlayerStateSuccess(final bool isVideoPlaying) =
      _$VideoPlayerStateSuccess;

  bool get isVideoPlaying;
  @JsonKey(ignore: true)
  _$$VideoPlayerStateSuccessCopyWith<_$VideoPlayerStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerStateFailedCopyWith<$Res> {
  factory _$$VideoPlayerStateFailedCopyWith(_$VideoPlayerStateFailed value,
          $Res Function(_$VideoPlayerStateFailed) then) =
      __$$VideoPlayerStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerStateFailedCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateFailed>
    implements _$$VideoPlayerStateFailedCopyWith<$Res> {
  __$$VideoPlayerStateFailedCopyWithImpl(_$VideoPlayerStateFailed _value,
      $Res Function(_$VideoPlayerStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VideoPlayerStateFailed implements VideoPlayerStateFailed {
  const _$VideoPlayerStateFailed();

  @override
  String toString() {
    return 'VideoPlayerState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool isVideoPlaying) success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool isVideoPlaying)? success,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool isVideoPlaying)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateInitial value) initial,
    required TResult Function(VideoPlayerStateLoading value) loading,
    required TResult Function(VideoPlayerStateSuccess value) success,
    required TResult Function(VideoPlayerStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateInitial value)? initial,
    TResult? Function(VideoPlayerStateLoading value)? loading,
    TResult? Function(VideoPlayerStateSuccess value)? success,
    TResult? Function(VideoPlayerStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateInitial value)? initial,
    TResult Function(VideoPlayerStateLoading value)? loading,
    TResult Function(VideoPlayerStateSuccess value)? success,
    TResult Function(VideoPlayerStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateFailed implements VideoPlayerState {
  const factory VideoPlayerStateFailed() = _$VideoPlayerStateFailed;
}
