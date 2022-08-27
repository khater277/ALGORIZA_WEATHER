// ignore_for_file: non_constant_identifier_names

import 'package:algoriza_weather/domain/models/current_weather/current_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'hourly_weather.freezed.dart';
part 'hourly_weather.g.dart';

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    int? dt,
    double? temp,
    double? feels_like,
    int? pressure,
    int? humidity,
    double? dew_point,
    double? uvi,
    int? clouds,
    int? visibility,
    double? wind_speed,
    int? wind_deg,
    List<Weather>? weather,
    double? pop,
  }) = _HourlyWeather;

  factory HourlyWeather.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherFromJson(json);
}
