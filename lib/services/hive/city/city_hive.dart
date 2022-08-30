import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'city_hive.g.dart';

@HiveType(typeId: 1)
class CityHive {
  @HiveField(0)
  @required
  double? latitude;

  @HiveField(1)
  @required
  double? longitude;

  @HiveField(2)
  @required
  int? cityId;

  @HiveField(3)
  @required
  String? name;

  @HiveField(4)
  @required
  int? temp;

  CityHive({
    required this.latitude,
    required this.longitude,
    required this.cityId,
    required this.name,
    this.temp,
  });
}
