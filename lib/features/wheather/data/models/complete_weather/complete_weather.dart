// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
part 'complete_weather.freezed.dart';
part 'complete_weather.g.dart';

@freezed
@HiveType(typeId: 2)
class CompleteWeatherModel with _$CompleteWeatherModel {
  const factory CompleteWeatherModel({
    @HiveField(0) double? lat,
    @HiveField(1) double? lon,
    @HiveField(2) CurrentWeather? current,
    @HiveField(3) List<HourlyWeather>? hourly,
    @HiveField(4) List<DailyWeather>? daily,
  }) = _CompleteWeatherModel;

  factory CompleteWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteWeatherModelFromJson(json);
}

@HiveType(typeId: 3)
@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @HiveField(0) int? dt,
    @HiveField(1) int? sunrise,
    @HiveField(2) int? sunset,
    @HiveField(3) double? temp,
    @HiveField(4) double? feels_like,
    @HiveField(5) int? humidity,
    @HiveField(6) double? uvi,
    @HiveField(7) double? wind_speed,
    @HiveField(8) List<Weather>? weather,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@HiveType(typeId: 4)
@freezed
class Weather with _$Weather {
  const factory Weather({
    @HiveField(0) int? id,
    @HiveField(1) String? main,
    @HiveField(2) String? description,
    @HiveField(3) String? icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@HiveType(typeId: 5)
@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    @HiveField(0) int? dt,
    @HiveField(1) Tempretrue? temp,
    @HiveField(2) List<Weather>? weather,
    @HiveField(3) double? rain,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}

@HiveType(typeId: 6)
@freezed
class Tempretrue with _$Tempretrue {
  const factory Tempretrue({
    @HiveField(0) double? min,
    @HiveField(1) double? max,
  }) = _Tempretrue;

  factory Tempretrue.fromJson(Map<String, dynamic> json) =>
      _$TempretrueFromJson(json);
}

@HiveType(typeId: 7)
@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    @HiveField(0) int? dt,
    @HiveField(1) double? temp,
    @HiveField(2) List<Weather>? weather,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}
