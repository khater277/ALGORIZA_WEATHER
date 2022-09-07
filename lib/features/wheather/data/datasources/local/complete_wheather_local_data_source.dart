import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/core/hive/hive_helper.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';

abstract class CompleteWheaterLocalDataSource {
  CompleteWeatherModel getLastCompleteWeather();
  Future<void> cacheCompleteWeather(CompleteWeatherModel completeWeatherModel);
}

class CompleteWheaterLocalDataSourceImpl
    implements CompleteWheaterLocalDataSource {
  @override
  CompleteWeatherModel getLastCompleteWeather() {
    final completeWeather = HiveHelper.getCompleteWeather();
    if (completeWeather != null) {
      return completeWeather;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheCompleteWeather(CompleteWeatherModel completeWeatherModel) {
    return HiveHelper.putCompleteWeather(
        completeWeatherModel: completeWeatherModel);
  }
}
