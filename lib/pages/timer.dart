import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/game_bloc.dart';
import '../widgets/buttons/timer_button.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TimerButton(
                    text: "chess.white".tr(),
                    move: state.whiteMove,
                    enabled: state.turn == GameTurn.white,
                    status: state.status,
                    durationMS: state.whiteDuration,
                    rotateAngle: pi,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      color: Colors.redAccent,
                      iconSize: 48,
                      icon: const Icon(Icons.arrow_circle_left_outlined),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      color: Colors.redAccent,
                      iconSize: 64,
                      icon: state.status == GameStatus.idle ||
                              state.status == GameStatus.end
                          ? const Icon(Icons.play_circle_outlined)
                          : const Icon(Icons.pause_circle_outlined),
                      onPressed: state.status == GameStatus.end
                          ? null
                          : () {
                              final gameBloc = context.read<GameBloc>();
                              if (state.status == GameStatus.idle) {
                                gameBloc.add(const GameStartEvent());
                              } else {
                                gameBloc.add(const GamePauseEvent());
                              }
                            },
                    ),
                    IconButton(
                      color: Colors.redAccent,
                      iconSize: 48,
                      icon: const Icon(Icons.timer_sharp),
                      onPressed: () {
                        context.read<GameBloc>().add(
                              const GameResetEvent(),
                            );
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: TimerButton(
                    text: "chess.black".tr(),
                    move: state.blackMove,
                    enabled: state.turn == GameTurn.black,
                    status: state.status,
                    durationMS: state.blackDuration,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
