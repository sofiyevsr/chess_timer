import 'package:auto_size_text/auto_size_text.dart';
import 'package:chess_timer/utils/db/db.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

const _themes = [
  {
    "name": "settings.theme_variants.system",
    "value": "system",
    "icon": Icons.phone_android_outlined
  },
  {
    "name": "settings.theme_variants.dark",
    "value": "dark",
    "icon": Icons.dark_mode_outlined
  },
  {
    "name": "settings.theme_variants.light",
    "value": "light",
    "icon": Icons.light_mode_outlined
  },
];

class ThemeSelector extends StatelessWidget {
  const ThemeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box(dbSettingsKey).listenable(keys: ["theme"]),
        builder: (context, Box gBox, widget) {
          final theme = gBox.get("theme", defaultValue: "system");
          return Column(
            children: _themes
                .map(
                  (e) => RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    activeColor: Colors.redAccent,
                    key: ValueKey(
                      e["value"],
                    ),
                    title: Row(
                      children: [
                        Icon(e["icon"] as IconData,
                            color: Colors.redAccent, size: 40),
                        Expanded(
                          child: Center(
                            child: AutoSizeText(
                              tr(e["name"] as String),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    value: e["value"]!,
                    groupValue: theme,
                    onChanged: (th) {
                      gBox.put("theme", th);
                    },
                  ),
                )
                .toList(),
          );
        });
  }
}
