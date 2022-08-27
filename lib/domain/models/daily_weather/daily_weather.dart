// ignore_for_file: non_constant_identifier_names

import 'package:algoriza_weather/domain/models/current_weather/current_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'daily_weather.freezed.dart';
part 'daily_weather.g.dart';

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    int? dt,
    int? sunrise,
    int? sunset,
    int? moonrise,
    int? moonset,
    double? moon_phase,
    Tempretrue? temp,
    FeelsLike? feels_like,
    int? pressure,
    int? humidity,
    double? dew_point,
    double? wind_speed,
    int? wind_deg,
    double? wind_gust,
    List<Weather>? weather,
    int? clouds,
    double? pop,
    double? rain,
    double? uvi,
  }) = _DailyWeather;

  factory DailyWeather.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherFromJson(json);
}

@freezed
class Tempretrue with _$Tempretrue {
  const factory Tempretrue({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _Tempretrue;

  factory Tempretrue.fromJson(Map<String, dynamic> json) =>
      _$TempretrueFromJson(json);
}

@freezed
class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
}
