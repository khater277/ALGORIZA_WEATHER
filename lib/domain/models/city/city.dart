// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    required double? latitude,
    required double? longitude,
    required int? cityId,
    required String? name,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
