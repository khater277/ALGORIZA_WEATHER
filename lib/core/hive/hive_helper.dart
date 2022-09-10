import 'package:algoriza_weather/core/hive/keys.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/cities/cities.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  static Box<CityModel>? favLocationBox;
  static Box<CityModel>? otherLocationsBox;
  static Box<CompleteWeatherModel>? completeWeatherBox;

  static Future<void> init() async {
    await Hive.initFlutter();

    /// Adapters
    Hive.registerAdapter(CityModelAdapter());
    Hive.registerAdapter(CompleteWeatherModelAdapter());
    Hive.registerAdapter(CurrentWeatherAdapter());
    Hive.registerAdapter(DailyWeatherAdapter());
    Hive.registerAdapter(HourlyWeatherAdapter());
    Hive.registerAdapter(TempretrueAdapter());
    Hive.registerAdapter(WeatherAdapter());

    /// Open Boxies
    favLocationBox = await Hive.openBox(HiveKeys.favLocation);
    otherLocationsBox = await Hive.openBox(HiveKeys.otherLocations);
    completeWeatherBox = await Hive.openBox(HiveKeys.completeWeather);
    bool condition = GetStorage().read('favLocation') ?? false;
    if (!condition) _setDefaultLoaction();
    // favLocationBox!.clear();
    // otherLocationsBox!.clear();
  }

  static Future<void> putCity({
    required Box box,
    required String key,
    required CityModel city,
  }) {
    return box.put(key, city);
  }

  static Future<void> removeCity({
    required Box box,
    required String key,
  }) {
    return box.delete(key);
  }

  static List<CityModel>? getBoxCities({required Box box}) {
    List<CityModel> cities = [];
    for (int i = 0; i < box.length; i++) {
      cities.add(box.getAt(i));
    }
    return cities;
  }

  static CityModel? getCity({
    required Box box,
    required String key,
  }) {
    return box.get(key);
  }

  static CompleteWeatherModel? getCompleteWeather() {
    return completeWeatherBox!.get(HiveKeys.completeWeather);
  }

  static Future<void> putCompleteWeather({
    required CompleteWeatherModel completeWeatherModel,
  }) {
    return completeWeatherBox!
        .put(HiveKeys.completeWeather, completeWeatherModel);
  }

  static void _setDefaultLoaction() {
    CityModel city = CityModel.fromJson(
        cities.firstWhere((element) => element['cityId'] == 360630));
    // FavoriteLocationLocalDataSourceImpl()
    //     .cacheFavoriteLocation(cityModel: city);
    putCity(box: favLocationBox!, key: HiveKeys.favLocation, city: city);
    GetStorage().write('favLocation', true);
    debugPrint("_setDefaultLoaction");
  }
}
