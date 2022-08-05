part of 'game_bloc.dart';

enum GameTurn { white, black }

enum GameStatus { idle, running, end }

@freezed
class GameState with _$GameState {
  const factory GameState({
    required int initialWhiteDuration,
    required int initialBlackDuration,
    required int whiteDuration,
    required int blackDuration,
    @Default(0) int whiteMove,
    @Default(0) int blackMove,
    @Default(GameTurn.white) GameTurn turn,
    @Default(GameStatus.idle) GameStatus status,
    int? increment,
  }) = _GameState;
}
