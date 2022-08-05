// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'templates.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TimeTemplateAdapter extends TypeAdapter<TimeTemplate> {
  @override
  final int typeId = 1;

  @override
  TimeTemplate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TimeTemplate(
      blackDuration: fields[0] as int,
      whiteDuration: fields[1] as int,
      title: fields[3] as String,
      increment: fields[2] as int?,
      type: fields[4] as TemplateType?,
    );
  }

  @override
  void write(BinaryWriter writer, TimeTemplate obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.blackDuration)
      ..writeByte(1)
      ..write(obj.whiteDuration)
      ..writeByte(2)
      ..write(obj.increment)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeTemplateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TemplateTypeAdapter extends TypeAdapter<TemplateType> {
  @override
  final int typeId = 0;

  @override
  TemplateType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TemplateType.bullet;
      case 1:
        return TemplateType.blitz;
      case 2:
        return TemplateType.rapid;
      default:
        return TemplateType.bullet;
    }
  }

  @override
  void write(BinaryWriter writer, TemplateType obj) {
    switch (obj) {
      case TemplateType.bullet:
        writer.writeByte(0);
        break;
      case TemplateType.blitz:
        writer.writeByte(1);
        break;
      case TemplateType.rapid:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemplateTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
