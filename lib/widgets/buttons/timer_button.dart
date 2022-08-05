import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/game_bloc.dart';

class TimerButton extends StatelessWidget {
  final bool enabled;
  final int durationMS;
  final double? rotateAngle;
  final int move;
  final GameStatus status;
  final String text;
  const TimerButton({
    required this.enabled,
    required this.durationMS,
    required this.move,
    required this.status,
    required this.text,
    this.rotateAngle,
    super.key,
  });

  String convertTime(int durationMS) {
    int milliseconds = durationMS % 1000 ~/ 100;
    int seconds = durationMS ~/ 1000;
    int minutes = seconds ~/ 60;
    int hours = minutes ~/ 60;

    seconds = seconds % 60;
    minutes = minutes % 60;

    if (hours > 0) {
      return "${hours.toString()}:${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}.${milliseconds.toString()}";
    } else if (minutes > 0) {
      return "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}.${milliseconds.toString()}";
    } else {
      return "${seconds.toString().padLeft(2, "0")}.${milliseconds.toString()}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotateAngle ?? 0,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Positioned.fill(
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                onPressed: enabled && status != GameStatus.end
                    ? () {
                        if (status == GameStatus.idle) {
                          context.read<GameBloc>().add(const GameStartEvent());
                        } else {
                          context
                              .read<GameBloc>()
                              .add(const GameToggleTurnEvent());
                        }
                      }
                    : null,
                child: Text(
                  durationMS != 0 ? convertTime(durationMS) : "Time's up",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: const Text(
                "common.move",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ).tr(
                namedArgs: {"move": move.toString()},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
