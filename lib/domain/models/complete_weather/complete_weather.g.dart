// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'complete_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompleteWeather _$$_CompleteWeatherFromJson(Map<String, dynamic> json) =>
    _$_CompleteWeather(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezone_offset: json['timezone_offset'] as int?,
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

Map<String, dynamic> _$$_CompleteWeatherToJson(_$_CompleteWeather instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezone_offset,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
