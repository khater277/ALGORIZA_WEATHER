// ignore_for_file: non_constant_identifier_names

import 'package:algoriza_weather/domain/models/current_weather/current_weather.dart';
import 'package:algoriza_weather/domain/models/daily_weather/daily_weather.dart';
import 'package:algoriza_weather/domain/models/hourly_weather/hourly_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'complete_weather.freezed.dart';
part 'complete_weather.g.dart';

@freezed
class CompleteWeather with _$CompleteWeather {
  const factory CompleteWeather({
    double? lat,
    double? lon,
    String? timezone,
    int? timezone_offset,
    CurrentWeather? current,
    List<HourlyWeather>? hourly,
    List<DailyWeather>? daily,
  }) = _CompleteWeather;

  factory CompleteWeather.fromJson(Map<String, dynamic> json) =>
      _$CompleteWeatherFromJson(json);
}
