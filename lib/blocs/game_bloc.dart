import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_bloc.freezed.dart';
part "game_event.dart";
part "game_state.dart";

class GameBloc extends Bloc<GameEvent, GameState> {
  static const int _durationMS = 100;

  StreamSubscription<int>? _tickerSubscription;

  GameBloc(
      {required int whiteDuration, required int blackDuration, int? increment})
      : super(
          GameState(
            whiteDuration: whiteDuration,
            blackDuration: blackDuration,
            initialWhiteDuration: whiteDuration,
            initialBlackDuration: blackDuration,
            increment: increment,
            turn: GameTurn.white,
          ),
        ) {
    on<GameStartEvent>(_onStarted);
    on<GameTickEvent>(_onTick);
    on<GamePauseEvent>(_onPause);
    on<GameToggleTurnEvent>(_onToggleTurn);
    on<GameResetEvent>(_onReset);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onPause(GamePauseEvent event, Emitter<GameState> emit) {
    _tickerSubscription?.cancel();
    emit(state.copyWith(
      status: GameStatus.idle,
    ));
  }

  void _onReset(GameResetEvent event, Emitter<GameState> emit) {
    _tickerSubscription?.cancel();
    emit(state.copyWith(
      turn: GameTurn.white,
      blackDuration: state.initialBlackDuration,
      whiteDuration: state.initialWhiteDuration,
      whiteMove: 0,
      blackMove: 0,
      status: GameStatus.idle,
    ));
  }

  void _onTick(GameTickEvent event, Emitter<GameState> emit) {
    if (state.whiteDuration <= 0 || state.blackDuration <= 0) {
      _tickerSubscription?.cancel();
      emit(
        state.copyWith(
          status: GameStatus.end,
        ),
      );
    } else if (state.turn == GameTurn.white && state.whiteDuration > 0) {
      emit(
        state.copyWith(
          whiteDuration: state.whiteDuration - _durationMS,
          status: GameStatus.running,
        ),
      );
    } else if (state.turn == GameTurn.black && state.blackDuration > 0) {
      emit(
        state.copyWith(
          blackDuration: state.blackDuration - _durationMS,
          status: GameStatus.running,
        ),
      );
    }
  }

  void _onToggleTurn(GameToggleTurnEvent event, Emitter<GameState> emit) {
    if (state.turn == GameTurn.white) {
      emit(state.copyWith(
        turn: GameTurn.black,
        whiteDuration: state.whiteDuration + (state.increment ?? 0),
        whiteMove: state.whiteMove + 1,
      ));
    } else {
      emit(state.copyWith(
        turn: GameTurn.white,
        blackMove: state.blackMove + 1,
        blackDuration: state.blackDuration + (state.increment ?? 0),
      ));
    }
  }

  void _onStarted(GameStartEvent event, Emitter<GameState> emit) {
    _tickerSubscription?.cancel();
    _tickerSubscription = Stream<int>.periodic(
        const Duration(milliseconds: _durationMS), (x) => x).listen((event) {
      add(const GameEvent.tick(duration: _durationMS));
    });
  }
}
