import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'wheel_picker.dart';

class TimePicker extends StatefulWidget {
  // int is in ms
  final Function(int) onConfirm;
  final String? errorText;
  final bool? disableHour;
  const TimePicker({
    required this.onConfirm,
    required this.errorText,
    this.disableHour,
    super.key,
  });

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int _hours = 0;
  int _minutes = 0;
  int _seconds = 0;
  String? _text;

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
    return Container(
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OutlinedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("common.cancel").tr(),
                        ),
                        TextButton(
                          onPressed: () {
                            final ms = Duration(
                              hours: _hours,
                              minutes: _minutes,
                              seconds: _seconds,
                            ).inMilliseconds;
                            widget.onConfirm(ms);
                            setState(() {
                              _text = convertTime(ms);
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text("common.confirm").tr(),
                        ),
                      ],
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (widget.disableHour != true)
                            WheelPicker(
                              onChange: (index) {
                                _hours = index;
                              },
                              label: "shorts.hour".tr(),
                              count: 49,
                            ),
                          WheelPicker(
                            onChange: (index) {
                              _minutes = index;
                            },
                            label: "shorts.minute".tr(),
                            count: 60,
                          ),
                          WheelPicker(
                            onChange: (index) {
                              _seconds = index;
                            },
                            label: "shorts.second".tr(),
                            count: 60,
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: Text(
              _text ?? "common.choose".tr(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          if (widget.errorText != null)
            Text(
              widget.errorText!,
              style: const TextStyle(color: Colors.red),
            )
        ],
      ),
    );
  }
}
