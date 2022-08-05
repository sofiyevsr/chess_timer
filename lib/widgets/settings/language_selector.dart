import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

const _langs = [
  {"asset": "assets/flags/az.png", "name": "Azərbaycanca", "value": "az"},
  {"asset": "assets/flags/ru.png", "name": "Русский", "value": "ru"},
  {"asset": "assets/flags/en.png", "name": "English", "value": "en"}
];

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({Key? key}) : super(key: key);

  void _setLanguage(BuildContext ctx, String? lang) async {
    if (lang != null) await ctx.setLocale(Locale(lang));
  }

  @override
  Widget build(BuildContext context) {
    final String? currentLanguage =
        EasyLocalization.of(context)?.currentLocale.toString().toLowerCase();
    return Column(
      children: _langs
          .map(
            (e) => RadioListTile(
              activeColor: Colors.redAccent,
              controlAffinity: ListTileControlAffinity.trailing,
              key: ValueKey(
                e["value"],
              ),
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(
                      e["asset"]!,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: AutoSizeText(
                        e["name"]!,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ],
              ),
              value: e["value"]!,
              groupValue: currentLanguage,
              onChanged: (lang) {
                _setLanguage(context, lang as String);
              },
            ),
          )
          .toList(),
    );
  }
}
