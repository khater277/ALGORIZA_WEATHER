// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_weather.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompleteWeatherModelAdapter extends TypeAdapter<CompleteWeatherModel> {
  @override
  final int typeId = 2;

  @override
  CompleteWeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompleteWeatherModel(
      lat: fields[0] as double?,
      lon: fields[1] as double?,
      current: fields[2] as CurrentWeather?,
      hourly: (fields[3] as List?)?.cast<HourlyWeather>(),
      daily: (fields[4] as List?)?.cast<DailyWeather>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompleteWeatherModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.lat)
      ..writeByte(1)
      ..write(obj.lon)
      ..writeByte(2)
      ..write(obj.current)
      ..writeByte(3)
      ..write(obj.hourly)
      ..writeByte(4)
      ..write(obj.daily);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompleteWeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CurrentWeatherAdapter extends TypeAdapter<CurrentWeather> {
  @override
  final int typeId = 3;

  @override
  CurrentWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CurrentWeather(
      dt: fields[0] as int?,
      sunrise: fields[1] as int?,
      sunset: fields[2] as int?,
      temp: fields[3] as double?,
      feels_like: fields[4] as double?,
      humidity: fields[5] as int?,
      uvi: fields[6] as double?,
      wind_speed: fields[7] as double?,
      weather: (fields[8] as List?)?.cast<Weather>(),
    );
  }

  @override
  void write(BinaryWriter writer, CurrentWeather obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.sunrise)
      ..writeByte(2)
      ..write(obj.sunset)
      ..writeByte(3)
      ..write(obj.temp)
      ..writeByte(4)
      ..write(obj.feels_like)
      ..writeByte(5)
      ..write(obj.humidity)
      ..writeByte(6)
      ..write(obj.uvi)
      ..writeByte(7)
      ..write(obj.wind_speed)
      ..writeByte(8)
      ..write(obj.weather);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrentWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeatherAdapter extends TypeAdapter<Weather> {
  @override
  final int typeId = 4;

  @override
  Weather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Weather(
      id: fields[0] as int?,
      main: fields[1] as String?,
      description: fields[2] as String?,
      icon: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Weather obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.main)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DailyWeatherAdapter extends TypeAdapter<DailyWeather> {
  @override
  final int typeId = 5;

  @override
  DailyWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DailyWeather(
      dt: fields[0] as int?,
      temp: fields[1] as Tempretrue?,
      weather: (fields[2] as List?)?.cast<Weather>(),
      rain: fields[3] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, DailyWeather obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.weather)
      ..writeByte(3)
      ..write(obj.rain);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TempretrueAdapter extends TypeAdapter<Tempretrue> {
  @override
  final int typeId = 6;

  @override
  Tempretrue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tempretrue(
      min: fields[0] as double?,
      max: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Tempretrue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.min)
      ..writeByte(1)
      ..write(obj.max);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TempretrueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HourlyWeatherAdapter extends TypeAdapter<HourlyWeather> {
  @override
  final int typeId = 7;

  @override
  HourlyWeather read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HourlyWeather(
      dt: fields[0] as int?,
      temp: fields[1] as double?,
      weather: (fields[2] as List?)?.cast<Weather>(),
    );
  }

  @override
  void write(BinaryWriter writer, HourlyWeather obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.temp)
      ..writeByte(2)
      ..write(obj.weather);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HourlyWeatherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompleteWeatherModel _$$_CompleteWeatherModelFromJson(
        Map<String, dynamic> json) =>
    _$_CompleteWeatherModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      current: json['current'] == null
          ? null
          : CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => HourlyWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => DailyWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CompleteWeatherModelToJson(
        _$_CompleteWeatherModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_$_CurrentWeather _$$_CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _$_CurrentWeather(
      dt: json['dt'] as int?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feels_like: (json['feels_like'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      uvi: (json['uvi'] as num?)?.toDouble(),
      wind_speed: (json['wind_speed'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CurrentWeatherToJson(_$_CurrentWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'humidity': instance.humidity,
      'uvi': instance.uvi,
      'wind_speed': instance.wind_speed,
      'weather': instance.weather,
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      id: json['id'] as int?,
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_DailyWeather _$$_DailyWeatherFromJson(Map<String, dynamic> json) =>
    _$_DailyWeather(
      dt: json['dt'] as int?,
      temp: json['temp'] == null
          ? null
          : Tempretrue.fromJson(json['temp'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      rain: (json['rain'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DailyWeatherToJson(_$_DailyWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'weather': instance.weather,
      'rain': instance.rain,
    };

_$_Tempretrue _$$_TempretrueFromJson(Map<String, dynamic> json) =>
    _$_Tempretrue(
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TempretrueToJson(_$_Tempretrue instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$_HourlyWeather _$$_HourlyWeatherFromJson(Map<String, dynamic> json) =>
    _$_HourlyWeather(
      dt: json['dt'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HourlyWeatherToJson(_$_HourlyWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'weather': instance.weather,
    };
