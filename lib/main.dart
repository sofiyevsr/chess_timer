import 'dart:async';

import 'package:chess_timer/pages/home.dart';
import 'package:chess_timer/utils/db/db.dart';
import 'package:chess_timer/utils/db/seed/templates.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    Hive.registerAdapter(TimeTemplateAdapter());
    Hive.registerAdapter(TemplateTypeAdapter());
    await Hive.initFlutter();
    await Hive.openBox<dynamic>(dbSettingsKey);
    await Hive.openBox<TimeTemplate>(dbTemplatesKey);
    runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('ru'),
          Locale('az'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const MyApp(),
      ),
    );
  }, (_, __) {});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeMode stringToTheme(String theme) {
    if (theme == "dark") {
      return ThemeMode.dark;
    }
    if (theme == "light") {
      return ThemeMode.light;
    }
    return ThemeMode.system;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box('settings').listenable(keys: ["theme"]),
        builder: (context, Box gBox, widget) {
          final theme = gBox.get("theme", defaultValue: "system");
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Chess Timer',
            color: Colors.white,
            themeMode: stringToTheme(theme),
            darkTheme: ThemeData.dark().copyWith(
              appBarTheme:
                  ThemeData.dark().appBarTheme.copyWith(centerTitle: true),
              colorScheme: ThemeData.dark()
                  .colorScheme
                  .copyWith(primary: Colors.redAccent),
            ),
            theme: ThemeData(
              appBarTheme: const AppBarTheme(centerTitle: true),
              colorScheme: const ColorScheme.light(primary: Colors.redAccent),
            ),
            home: const HomePage(),
          );
        });
  }
}
