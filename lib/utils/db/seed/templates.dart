import 'package:chess_timer/widgets/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part "templates.g.dart";

@HiveType(typeId: 0)
enum TemplateType {
  @HiveField(0)
  bullet,

  @HiveField(1)
  blitz,

  @HiveField(2)
  rapid,
}

@HiveType(typeId: 1)
class TimeTemplate {
  @HiveField(0)
  final int blackDuration;
  @HiveField(1)
  final int whiteDuration;
  @HiveField(2)
  final int? increment;
  @HiveField(3)
  final String title;
  @HiveField(4)
  final TemplateType? type;
  const TimeTemplate({
    required this.blackDuration,
    required this.whiteDuration,
    required this.title,
    this.increment,
    this.type,
  });
}

const bulletIcon = CustomIcons.bullet_icon;
const blitzIcon = CustomIcons.timer_icon;
const rapidIcon = CustomIcons.chess_board_icon;

const bulletColor = Colors.orange;
const blitzColor = Colors.green;
const rapidColor = Colors.green;

final List<TimeTemplate> allTemplates = [
  //
  // *********Bullet********
  //
  const TimeTemplate(
    title: "1 | 0",
    blackDuration: 1 * 60 * 1000,
    whiteDuration: 1 * 60 * 1000,
    type: TemplateType.bullet,
  ),
  const TimeTemplate(
    title: "2 | 0",
    blackDuration: 2 * 60 * 1000,
    whiteDuration: 2 * 60 * 1000,
    type: TemplateType.bullet,
  ),
  const TimeTemplate(
    title: "2 | 1",
    blackDuration: 2 * 60 * 1000,
    whiteDuration: 2 * 60 * 1000,
    type: TemplateType.bullet,
    increment: 1 * 1000,
  ),
  //
  // ********Blitz********
  //
  const TimeTemplate(
    title: "3 | 0",
    blackDuration: 3 * 60 * 1000,
    whiteDuration: 3 * 60 * 1000,
    type: TemplateType.blitz,
  ),
  const TimeTemplate(
    title: "4 | 0",
    blackDuration: 4 * 60 * 1000,
    whiteDuration: 4 * 60 * 1000,
    type: TemplateType.blitz,
  ),
  const TimeTemplate(
    title: "5 | 0",
    blackDuration: 5 * 60 * 1000,
    whiteDuration: 5 * 60 * 1000,
    type: TemplateType.blitz,
  ),
  const TimeTemplate(
    title: "3 | 2",
    blackDuration: 3 * 60 * 1000,
    whiteDuration: 3 * 60 * 1000,
    increment: 2 * 1000,
    type: TemplateType.blitz,
  ),
  const TimeTemplate(
    title: "5 | 5",
    blackDuration: 5 * 60 * 1000,
    whiteDuration: 5 * 60 * 1000,
    increment: 5 * 1000,
    type: TemplateType.blitz,
  ),
  //
  // ********Rapid********
  //
  const TimeTemplate(
    title: "10 | 0",
    blackDuration: 10 * 60 * 1000,
    whiteDuration: 10 * 60 * 1000,
    type: TemplateType.rapid,
  ),
  const TimeTemplate(
    title: "15 | 10",
    blackDuration: 15 * 60 * 1000,
    whiteDuration: 15 * 60 * 1000,
    increment: 10 * 1000,
    type: TemplateType.rapid,
  ),
  const TimeTemplate(
    title: "30 | 0",
    blackDuration: 30 * 60 * 1000,
    whiteDuration: 30 * 60 * 1000,
    type: TemplateType.rapid,
  ),
];
