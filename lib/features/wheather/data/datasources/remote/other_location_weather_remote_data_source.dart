import 'package:algoriza_weather/core/api/dio_helper.dart';
import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';

abstract class OtherLocationWeatherRemoteDataSource {
  Future<CityModel> getOtherLocationWeather(CityModel city);
}

class OtherLocationWeatherRemoteDataSourceImpl
    implements OtherLocationWeatherRemoteDataSource {
  @override
  Future<CityModel> getOtherLocationWeather(CityModel city) async {
    final response = await DioHelper.getCurrentWeather(
      lat: city.latitude!.toString(),
      lon: city.longitude!.toString(),
    );
    if (response.statusCode == 200) {
      return city.copyWith(
        temp: response.data['main']['temp'].round(),
      );
    } else {
      throw ServerException();
    }
  }
}
