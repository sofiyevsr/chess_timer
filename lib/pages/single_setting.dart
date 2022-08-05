import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SingleSetting extends StatelessWidget {
  final Widget child;
  final String title;
  const SingleSetting({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.cardColor,
      appBar: AppBar(
        title: Text(
          tr(title),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: ListTileTheme(
            dense: true,
            child: DividerTheme(
              data: const DividerThemeData(
                thickness: 1.5,
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
