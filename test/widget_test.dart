// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'package:chess_timer/utils/db/db.dart';
import 'package:chess_timer/utils/db/seed/templates.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chess_timer/main.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  testWidgets('App compiles', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Hive.initFlutter();
    Hive.registerAdapter(TimeTemplateAdapter());
    Hive.registerAdapter(TemplateTypeAdapter());
    await Hive.initFlutter();
    await Hive.openBox<dynamic>(dbSettingsKey);
    await Hive.openBox<TimeTemplate>(dbTemplatesKey);
    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale("en")],
        path: "assets/translations",
        fallbackLocale: const Locale("en"),
        startLocale: const Locale("en"),
        child: const MyApp(),
      ),
    );

    await tester.pump();
  });
}
