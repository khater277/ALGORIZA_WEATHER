import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/core/hive/hive_helper.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';

abstract class OtherLocationWeatherLocalDataSource {
  CityModel? getOtherLocationWeather(String key);
  Future<void> cacheOtherLocationWeather(String key, CityModel city);
}

class OtherLocationWeatherLocalDataSourceImpl
    implements OtherLocationWeatherLocalDataSource {
  @override
  CityModel? getOtherLocationWeather(String key) {
    final city = HiveHelper.getCity(
      box: HiveHelper.otherLocationsBox!,
      key: key,
    );
    if (city != null) {
      return city;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheOtherLocationWeather(String key, CityModel city) {
    return HiveHelper.putCity(
      box: HiveHelper.otherLocationsBox!,
      key: key,
      city: city,
    );
  }
}
