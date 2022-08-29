// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityHiveAdapter extends TypeAdapter<CityHive> {
  @override
  final int typeId = 1;

  @override
  CityHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityHive(
      latitude: fields[0] as double?,
      longitude: fields[1] as double?,
      cityId: fields[2] as int?,
      name: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CityHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.cityId)
      ..writeByte(3)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
