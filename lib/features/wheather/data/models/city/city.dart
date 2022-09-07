// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
part 'city.freezed.dart';
part 'city.g.dart';

@freezed
@HiveType(typeId: 1)
class CityModel with _$CityModel {
  const factory CityModel({
    @HiveField(0) required double? latitude,
    @HiveField(1) required double? longitude,
    @HiveField(2) required int? cityId,
    @HiveField(3) required String? name,
    @HiveField(4) int? temp,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
