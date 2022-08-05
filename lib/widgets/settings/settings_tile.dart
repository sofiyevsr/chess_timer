import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final EdgeInsets? padding;
  final void Function()? onTap;

  const SettingsTile({
    required this.title,
    required this.icon,
    this.padding,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).cardColor,
      ),
      alignment: Alignment.center,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          elevation: 1,
          backgroundColor: Theme.of(context).cardColor,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    icon,
                    size: 40,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: AutoSizeText(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
