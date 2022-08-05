part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.start() = GameStartEvent;
  const factory GameEvent.pause() = GamePauseEvent;
  const factory GameEvent.tick({
    required int duration,
  }) = GameTickEvent;
  const factory GameEvent.toggleTurn() = GameToggleTurnEvent;
  const factory GameEvent.reset() = GameResetEvent;
}
