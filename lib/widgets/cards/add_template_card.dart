import 'package:chess_timer/pages/add_template.dart';
import 'package:chess_timer/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddTemplateCard extends StatelessWidget {
  const AddTemplateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).cardColor,
      ),
      child: OutlinedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              settings: const RouteSettings(name: addTemplatePageName),
              builder: (context) {
                return const AddTemplatePage();
              },
            ),
          );
        },
        style: OutlinedButton.styleFrom(
          elevation: 1,
          backgroundColor: Theme.of(context).cardColor,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              size: 56,
            ),
            const Text(
              "common.add_new_template",
              textAlign: TextAlign.center,
            ).tr(),
          ],
        ),
      ),
    );
  }
}
