import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/utils/constants.dart';
import 'package:chess_timer/utils/db/seed/templates.dart';
import 'package:chess_timer/widgets/icons/custom_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/game_bloc.dart';
import '../../pages/timer.dart';

class TemplateCard extends StatelessWidget {
  final TimeTemplate template;
  final void Function()? onDelete;
  const TemplateCard({
    super.key,
    required this.template,
    this.onDelete,
  });

  String convertTime(int durationMS) {
    int seconds = durationMS ~/ 1000;
    int minutes = seconds ~/ 60;
    int hours = minutes ~/ 60;

    seconds = seconds % 60;
    minutes = minutes % 60;

    if (hours > 0) {
      return "time.with_hour".tr(namedArgs: {
        "hours": hours.toString(),
        "minutes": minutes.toString(),
        "seconds": seconds.toString(),
      });
    } else if (minutes > 0) {
      return "time.with_minutes".tr(namedArgs: {
        "minutes": minutes.toString(),
        "seconds": seconds.toString(),
      });
    } else {
      return "time.with_seconds".tr(namedArgs: {"seconds": seconds.toString()});
    }
  }

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _TemplateIcon(type: template.type),
                AutoSizeText(
                  template.title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        CustomIcons.chess_rook_icon,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        convertTime(template.whiteDuration),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Icon(
                        CustomIcons.chess_rook_icon,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        convertTime(template.blackDuration),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          settings: const RouteSettings(name: timerPageName),
                          builder: (context) {
                            return BlocProvider(
                              create: (_) => GameBloc(
                                blackDuration: template.blackDuration,
                                whiteDuration: template.whiteDuration,
                                increment: template.increment,
                              ),
                              child: const TimerPage(),
                            );
                          },
                        ),
                      );
                    },
                    child: const Text("common.start").tr(),
                  ),
                ),
              ],
            ),
            if (onDelete != null)
              Positioned(
                right: 0,
                top: 0,
                child: IconButton(
                  onPressed: onDelete,
                  color: Colors.red,
                  icon: const Icon(Icons.delete_rounded),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TemplateIcon extends StatelessWidget {
  final TemplateType? type;
  const _TemplateIcon({this.type});

  Color? getColor() {
    if (type == TemplateType.bullet) {
      return bulletColor;
    } else if (type == TemplateType.blitz) {
      return blitzColor;
    } else if (type == TemplateType.rapid) {
      return rapidColor;
    }
    return Colors.redAccent;
  }

  IconData? getIcon() {
    if (type == TemplateType.bullet) {
      return bulletIcon;
    } else if (type == TemplateType.blitz) {
      return blitzIcon;
    } else if (type == TemplateType.rapid) {
      return rapidIcon;
    }
    return Icons.games;
  }

  @override
  Widget build(BuildContext ctx) {
    return Icon(
      getIcon(),
      color: getColor(),
      size: 26,
    );
  }
}
