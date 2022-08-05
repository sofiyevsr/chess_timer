import 'package:chess_timer/pages/settings.dart';
import 'package:chess_timer/pages/timer.dart';
import 'package:chess_timer/utils/constants.dart';
import 'package:chess_timer/utils/db/seed/templates.dart';
import 'package:chess_timer/widgets/icons/custom_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../blocs/game_bloc.dart';
import '../utils/db/db.dart';
import '../widgets/cards/add_template_card.dart';
import '../widgets/cards/template_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void navigateToTimerPage(
    context, {
    required int blackDuration,
    required int whiteDuration,
    int? increment,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider(
            create: (_) => GameBloc(
              blackDuration: blackDuration,
              whiteDuration: whiteDuration,
              increment: increment,
            ),
            child: const TimerPage(),
          );
        },
      ),
    );
  }

  Future<void> runSeeds() async {
    final settingsBox = Hive.box<dynamic>(dbSettingsKey);
    final templatesBox = Hive.box<TimeTemplate>(dbTemplatesKey);
    final hasSeedsRun = settingsBox.get(dbHasSeedRunKey, defaultValue: false);
    final templatesLength = templatesBox.length;
    if (hasSeedsRun == false && templatesLength == 0) {
      await templatesBox.addAll(allTemplates);
      await settingsBox.put(dbHasSeedRunKey, true);
    }
  }

  Future<void> showDeleteDialog(void Function() onPressed) async {
    await showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text("common.are_you_sure").tr(),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("common.cancel").tr(),
              ),
              TextButton(
                onPressed: () {
                  onPressed();
                  Navigator.of(context).pop();
                },
                child: const Text("common.delete").tr(),
              ),
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    runSeeds().catchError((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chess Timer"),
        leading: IconButton(
          onPressed: () async {
            final messenger = ScaffoldMessenger.of(context);
            final toast = SnackBar(
              content: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4),
                    child: const Icon(Icons.error_sharp, color: Colors.white),
                  ),
                  const Text("common.cannot_launch_url").tr(),
                ],
              ),
              backgroundColor: Colors.red,
            );
            try {
              final launched = await launchUrl(
                Uri.parse("https://github.com/sofiyevsr/chess_timer"),
                mode: LaunchMode.externalApplication,
              );
              if (launched == false) {
                messenger.showSnackBar(toast);
              }
            } catch (e) {
              messenger.showSnackBar(toast);
            }
          },
          icon: const Icon(
            CustomIcons.github_circled,
            size: 32,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: const RouteSettings(name: settingsPageName),
                  builder: (context) {
                    return const SettingsPage();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.settings,
              size: 32,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ValueListenableBuilder<Box<TimeTemplate>>(
            valueListenable:
                Hive.box<TimeTemplate>(dbTemplatesKey).listenable(),
            builder: (context, templates, child) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                ),
                itemCount: templates.length + 1,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (ctx, index) {
                  if (index == 0) {
                    return const AddTemplateCard();
                  }
                  return TemplateCard(
                      template: templates.getAt(templates.length - index)!,
                      onDelete: () {
                        showDeleteDialog(() {
                          templates.deleteAt(templates.length - index);
                        }).catchError((_) {});
                      });
                },
              );
            }),
      ),
    );
  }
}
