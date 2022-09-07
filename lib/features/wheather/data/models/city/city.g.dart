// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CityModelAdapter extends TypeAdapter<CityModel> {
  @override
  final int typeId = 1;

  @override
  CityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CityModel(
      latitude: fields[0] as double?,
      longitude: fields[1] as double?,
      cityId: fields[2] as int?,
      name: fields[3] as String?,
      temp: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, CityModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.latitude)
      ..writeByte(1)
      ..write(obj.longitude)
      ..writeByte(2)
      ..write(obj.cityId)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.temp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      cityId: json['cityId'] as int?,
      name: json['name'] as String?,
      temp: json['temp'] as int?,
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'cityId': instance.cityId,
      'name': instance.name,
      'temp': instance.temp,
    };
