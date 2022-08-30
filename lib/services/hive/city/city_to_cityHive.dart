// ignore_for_file: file_names

import 'package:algoriza_weather/domain/models/city/city.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';

CityHive cityToCityHive({required City city}) {
  CityHive cityHive = CityHive(
    latitude: city.latitude,
    longitude: city.longitude,
    cityId: city.cityId,
    name: city.name,
  );
  return cityHive;
}
