import 'package:chess_timer/pages/single_setting.dart';
import 'package:chess_timer/utils/constants.dart';
import 'package:chess_timer/widgets/settings/about_dialog.dart';
import 'package:chess_timer/widgets/settings/language_selector.dart';
import 'package:chess_timer/widgets/settings/settings_tile.dart';
import 'package:chess_timer/widgets/settings/theme_selector.dart';
import 'package:easy_localization/easy_localization.dart';
import "package:flutter/material.dart";
import 'package:package_info_plus/package_info_plus.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  void showAbout(BuildContext context) async {
    final details = await PackageInfo.fromPlatform();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: CustomAboutDialog(details: details),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    EasyLocalization.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr("settings.title"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: IconTheme(
            data: const IconThemeData(
              color: Colors.redAccent,
            ),
            child: Container(
                margin: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SettingsTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const SingleSetting(
                              title: ("settings.language"),
                              child: LanguageSelector(),
                            );
                          },
                          settings: const RouteSettings(
                            name: changeLanguagePageName,
                          ),
                        ),
                      );
                    },
                    title: tr("settings.language"),
                    icon: Icons.translate_sharp,
                  ),
                  SettingsTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return const SingleSetting(
                              title: ("settings.theme"),
                              child: ThemeSelector(),
                            );
                          },
                          settings:
                              const RouteSettings(name: changeThemePageName),
                        ),
                      );
                    },
                    icon: Icons.layers_outlined,
                    title: tr("settings.theme"),
                  ),
                  SettingsTile(
                    onTap: () => showAbout(context),
                    title: tr("settings.about"),
                    icon: Icons.info_outlined,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
