// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;
  // ignore: unused_field
  final $Res Function(GameEvent) _then;
}

/// @nodoc
abstract class _$$GameStartEventCopyWith<$Res> {
  factory _$$GameStartEventCopyWith(
          _$GameStartEvent value, $Res Function(_$GameStartEvent) then) =
      __$$GameStartEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStartEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$GameStartEventCopyWith<$Res> {
  __$$GameStartEventCopyWithImpl(
      _$GameStartEvent _value, $Res Function(_$GameStartEvent) _then)
      : super(_value, (v) => _then(v as _$GameStartEvent));

  @override
  _$GameStartEvent get _value => super._value as _$GameStartEvent;
}

/// @nodoc

class _$GameStartEvent implements GameStartEvent {
  const _$GameStartEvent();

  @override
  String toString() {
    return 'GameEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStartEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GameStartEvent implements GameEvent {
  const factory GameStartEvent() = _$GameStartEvent;
}

/// @nodoc
abstract class _$$GamePauseEventCopyWith<$Res> {
  factory _$$GamePauseEventCopyWith(
          _$GamePauseEvent value, $Res Function(_$GamePauseEvent) then) =
      __$$GamePauseEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GamePauseEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$GamePauseEventCopyWith<$Res> {
  __$$GamePauseEventCopyWithImpl(
      _$GamePauseEvent _value, $Res Function(_$GamePauseEvent) _then)
      : super(_value, (v) => _then(v as _$GamePauseEvent));

  @override
  _$GamePauseEvent get _value => super._value as _$GamePauseEvent;
}

/// @nodoc

class _$GamePauseEvent implements GamePauseEvent {
  const _$GamePauseEvent();

  @override
  String toString() {
    return 'GameEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GamePauseEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class GamePauseEvent implements GameEvent {
  const factory GamePauseEvent() = _$GamePauseEvent;
}

/// @nodoc
abstract class _$$GameTickEventCopyWith<$Res> {
  factory _$$GameTickEventCopyWith(
          _$GameTickEvent value, $Res Function(_$GameTickEvent) then) =
      __$$GameTickEventCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class __$$GameTickEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$GameTickEventCopyWith<$Res> {
  __$$GameTickEventCopyWithImpl(
      _$GameTickEvent _value, $Res Function(_$GameTickEvent) _then)
      : super(_value, (v) => _then(v as _$GameTickEvent));

  @override
  _$GameTickEvent get _value => super._value as _$GameTickEvent;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$GameTickEvent(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GameTickEvent implements GameTickEvent {
  const _$GameTickEvent({required this.duration});

  @override
  final int duration;

  @override
  String toString() {
    return 'GameEvent.tick(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTickEvent &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$GameTickEventCopyWith<_$GameTickEvent> get copyWith =>
      __$$GameTickEventCopyWithImpl<_$GameTickEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) {
    return tick(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) {
    return tick?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class GameTickEvent implements GameEvent {
  const factory GameTickEvent({required final int duration}) = _$GameTickEvent;

  int get duration;
  @JsonKey(ignore: true)
  _$$GameTickEventCopyWith<_$GameTickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameToggleTurnEventCopyWith<$Res> {
  factory _$$GameToggleTurnEventCopyWith(_$GameToggleTurnEvent value,
          $Res Function(_$GameToggleTurnEvent) then) =
      __$$GameToggleTurnEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameToggleTurnEventCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res>
    implements _$$GameToggleTurnEventCopyWith<$Res> {
  __$$GameToggleTurnEventCopyWithImpl(
      _$GameToggleTurnEvent _value, $Res Function(_$GameToggleTurnEvent) _then)
      : super(_value, (v) => _then(v as _$GameToggleTurnEvent));

  @override
  _$GameToggleTurnEvent get _value => super._value as _$GameToggleTurnEvent;
}

/// @nodoc

class _$GameToggleTurnEvent implements GameToggleTurnEvent {
  const _$GameToggleTurnEvent();

  @override
  String toString() {
    return 'GameEvent.toggleTurn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameToggleTurnEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) {
    return toggleTurn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) {
    return toggleTurn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (toggleTurn != null) {
      return toggleTurn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) {
    return toggleTurn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) {
    return toggleTurn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (toggleTurn != null) {
      return toggleTurn(this);
    }
    return orElse();
  }
}

abstract class GameToggleTurnEvent implements GameEvent {
  const factory GameToggleTurnEvent() = _$GameToggleTurnEvent;
}

/// @nodoc
abstract class _$$GameResetEventCopyWith<$Res> {
  factory _$$GameResetEventCopyWith(
          _$GameResetEvent value, $Res Function(_$GameResetEvent) then) =
      __$$GameResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameResetEventCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements _$$GameResetEventCopyWith<$Res> {
  __$$GameResetEventCopyWithImpl(
      _$GameResetEvent _value, $Res Function(_$GameResetEvent) _then)
      : super(_value, (v) => _then(v as _$GameResetEvent));

  @override
  _$GameResetEvent get _value => super._value as _$GameResetEvent;
}

/// @nodoc

class _$GameResetEvent implements GameResetEvent {
  const _$GameResetEvent();

  @override
  String toString() {
    return 'GameEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() pause,
    required TResult Function(int duration) tick,
    required TResult Function() toggleTurn,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? pause,
    TResult Function(int duration)? tick,
    TResult Function()? toggleTurn,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameStartEvent value) start,
    required TResult Function(GamePauseEvent value) pause,
    required TResult Function(GameTickEvent value) tick,
    required TResult Function(GameToggleTurnEvent value) toggleTurn,
    required TResult Function(GameResetEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameStartEvent value)? start,
    TResult Function(GamePauseEvent value)? pause,
    TResult Function(GameTickEvent value)? tick,
    TResult Function(GameToggleTurnEvent value)? toggleTurn,
    TResult Function(GameResetEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class GameResetEvent implements GameEvent {
  const factory GameResetEvent() = _$GameResetEvent;
}

/// @nodoc
mixin _$GameState {
  int get initialWhiteDuration => throw _privateConstructorUsedError;
  int get initialBlackDuration => throw _privateConstructorUsedError;
  int get whiteDuration => throw _privateConstructorUsedError;
  int get blackDuration => throw _privateConstructorUsedError;
  int get whiteMove => throw _privateConstructorUsedError;
  int get blackMove => throw _privateConstructorUsedError;
  GameTurn get turn => throw _privateConstructorUsedError;
  GameStatus get status => throw _privateConstructorUsedError;
  int? get increment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
  $Res call(
      {int initialWhiteDuration,
      int initialBlackDuration,
      int whiteDuration,
      int blackDuration,
      int whiteMove,
      int blackMove,
      GameTurn turn,
      GameStatus status,
      int? increment});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;

  @override
  $Res call({
    Object? initialWhiteDuration = freezed,
    Object? initialBlackDuration = freezed,
    Object? whiteDuration = freezed,
    Object? blackDuration = freezed,
    Object? whiteMove = freezed,
    Object? blackMove = freezed,
    Object? turn = freezed,
    Object? status = freezed,
    Object? increment = freezed,
  }) {
    return _then(_value.copyWith(
      initialWhiteDuration: initialWhiteDuration == freezed
          ? _value.initialWhiteDuration
          : initialWhiteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      initialBlackDuration: initialBlackDuration == freezed
          ? _value.initialBlackDuration
          : initialBlackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      whiteDuration: whiteDuration == freezed
          ? _value.whiteDuration
          : whiteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      blackDuration: blackDuration == freezed
          ? _value.blackDuration
          : blackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      whiteMove: whiteMove == freezed
          ? _value.whiteMove
          : whiteMove // ignore: cast_nullable_to_non_nullable
              as int,
      blackMove: blackMove == freezed
          ? _value.blackMove
          : blackMove // ignore: cast_nullable_to_non_nullable
              as int,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as GameTurn,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      increment: increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$_GameStateCopyWith(
          _$_GameState value, $Res Function(_$_GameState) then) =
      __$$_GameStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int initialWhiteDuration,
      int initialBlackDuration,
      int whiteDuration,
      int blackDuration,
      int whiteMove,
      int blackMove,
      GameTurn turn,
      GameStatus status,
      int? increment});
}

/// @nodoc
class __$$_GameStateCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$$_GameStateCopyWith<$Res> {
  __$$_GameStateCopyWithImpl(
      _$_GameState _value, $Res Function(_$_GameState) _then)
      : super(_value, (v) => _then(v as _$_GameState));

  @override
  _$_GameState get _value => super._value as _$_GameState;

  @override
  $Res call({
    Object? initialWhiteDuration = freezed,
    Object? initialBlackDuration = freezed,
    Object? whiteDuration = freezed,
    Object? blackDuration = freezed,
    Object? whiteMove = freezed,
    Object? blackMove = freezed,
    Object? turn = freezed,
    Object? status = freezed,
    Object? increment = freezed,
  }) {
    return _then(_$_GameState(
      initialWhiteDuration: initialWhiteDuration == freezed
          ? _value.initialWhiteDuration
          : initialWhiteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      initialBlackDuration: initialBlackDuration == freezed
          ? _value.initialBlackDuration
          : initialBlackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      whiteDuration: whiteDuration == freezed
          ? _value.whiteDuration
          : whiteDuration // ignore: cast_nullable_to_non_nullable
              as int,
      blackDuration: blackDuration == freezed
          ? _value.blackDuration
          : blackDuration // ignore: cast_nullable_to_non_nullable
              as int,
      whiteMove: whiteMove == freezed
          ? _value.whiteMove
          : whiteMove // ignore: cast_nullable_to_non_nullable
              as int,
      blackMove: blackMove == freezed
          ? _value.blackMove
          : blackMove // ignore: cast_nullable_to_non_nullable
              as int,
      turn: turn == freezed
          ? _value.turn
          : turn // ignore: cast_nullable_to_non_nullable
              as GameTurn,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
      increment: increment == freezed
          ? _value.increment
          : increment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_GameState implements _GameState {
  const _$_GameState(
      {required this.initialWhiteDuration,
      required this.initialBlackDuration,
      required this.whiteDuration,
      required this.blackDuration,
      this.whiteMove = 0,
      this.blackMove = 0,
      this.turn = GameTurn.white,
      this.status = GameStatus.idle,
      this.increment});

  @override
  final int initialWhiteDuration;
  @override
  final int initialBlackDuration;
  @override
  final int whiteDuration;
  @override
  final int blackDuration;
  @override
  @JsonKey()
  final int whiteMove;
  @override
  @JsonKey()
  final int blackMove;
  @override
  @JsonKey()
  final GameTurn turn;
  @override
  @JsonKey()
  final GameStatus status;
  @override
  final int? increment;

  @override
  String toString() {
    return 'GameState(initialWhiteDuration: $initialWhiteDuration, initialBlackDuration: $initialBlackDuration, whiteDuration: $whiteDuration, blackDuration: $blackDuration, whiteMove: $whiteMove, blackMove: $blackMove, turn: $turn, status: $status, increment: $increment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameState &&
            const DeepCollectionEquality()
                .equals(other.initialWhiteDuration, initialWhiteDuration) &&
            const DeepCollectionEquality()
                .equals(other.initialBlackDuration, initialBlackDuration) &&
            const DeepCollectionEquality()
                .equals(other.whiteDuration, whiteDuration) &&
            const DeepCollectionEquality()
                .equals(other.blackDuration, blackDuration) &&
            const DeepCollectionEquality().equals(other.whiteMove, whiteMove) &&
            const DeepCollectionEquality().equals(other.blackMove, blackMove) &&
            const DeepCollectionEquality().equals(other.turn, turn) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.increment, increment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialWhiteDuration),
      const DeepCollectionEquality().hash(initialBlackDuration),
      const DeepCollectionEquality().hash(whiteDuration),
      const DeepCollectionEquality().hash(blackDuration),
      const DeepCollectionEquality().hash(whiteMove),
      const DeepCollectionEquality().hash(blackMove),
      const DeepCollectionEquality().hash(turn),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(increment));

  @JsonKey(ignore: true)
  @override
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      __$$_GameStateCopyWithImpl<_$_GameState>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState(
      {required final int initialWhiteDuration,
      required final int initialBlackDuration,
      required final int whiteDuration,
      required final int blackDuration,
      final int whiteMove,
      final int blackMove,
      final GameTurn turn,
      final GameStatus status,
      final int? increment}) = _$_GameState;

  @override
  int get initialWhiteDuration;
  @override
  int get initialBlackDuration;
  @override
  int get whiteDuration;
  @override
  int get blackDuration;
  @override
  int get whiteMove;
  @override
  int get blackMove;
  @override
  GameTurn get turn;
  @override
  GameStatus get status;
  @override
  int? get increment;
  @override
  @JsonKey(ignore: true)
  _$$_GameStateCopyWith<_$_GameState> get copyWith =>
      throw _privateConstructorUsedError;
}
