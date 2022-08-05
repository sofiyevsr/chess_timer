import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CustomAboutDialog extends StatelessWidget {
  final PackageInfo details;
  const CustomAboutDialog({super.key, required this.details});

  @override
  Widget build(context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            tr("settings.about"),
            style: textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          // contentPadding: const EdgeInsets.all(0),
          title: Text(
            tr("settings.about_fields.name"),
            style: Theme.of(context).textTheme.subtitle2,
          ),
          trailing: Text(
            details.appName.toString(),
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ListTile(
          // contentPadding: const EdgeInsets.all(0),
          title: Text(
            tr("settings.about_fields.version"),
            style: Theme.of(context).textTheme.subtitle2,
          ),
          trailing: Text(
            details.version.toString(),
            style: Theme.of(context).textTheme.bodyText2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
