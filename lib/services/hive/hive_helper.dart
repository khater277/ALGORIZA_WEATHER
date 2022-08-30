import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/city/city.dart';
import 'package:algoriza_weather/services/hive/keys.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static Box<CityHive>? favLocationBox;
  static Box<CityHive>? otherLocationsBox;

  static init() {
    bool condition = GetStorage().read('favLocation') ?? false;
    if (!condition) _setDefaultLoaction();
  }

  static Future<void> addCity({
    required Box box,
    required String key,
    required CityHive cityHive,
  }) {
    return box.put(key, cityHive);
  }

  static Future<void> removeCity({
    required Box box,
    required String key,
  }) {
    return box.delete(key);
  }

  static List<CityHive> getBoxCities({required Box box}) {
    List<CityHive> cities = [];
    for (int i = 0; i < box.length; i++) {
      cities.add(box.getAt(i));
    }
    return cities;
  }

  static CityHive getCity({
    required Box box,
    required String key,
  }) {
    return box.get(key)!;
  }

  static void _setDefaultLoaction() {
    City city = City.fromJson(
        cities.firstWhere((element) => element['cityId'] == 360630));
    CityHive cityHive = CityHive(
      latitude: city.latitude,
      longitude: city.longitude,
      cityId: city.cityId,
      name: city.name,
    );
    addCity(
        box: favLocationBox!, key: HiveKeys.favLocation, cityHive: cityHive);
    GetStorage().write('favLocation', true);
    print("_setDefaultLoaction");
  }
}
