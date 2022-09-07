import 'package:algoriza_weather/core/api/dio_helper.dart';
import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_complete_weather.dart';

abstract class CompleteWheaterRemoteDataSource {
  Future<CompleteWeatherModel> getCompleteWeather(CompleteWeatherParams params);
}

class CompleteWheaterRemoteDataSourceImpl
    implements CompleteWheaterRemoteDataSource {
  CompleteWheaterRemoteDataSourceImpl();
  @override
  Future<CompleteWeatherModel> getCompleteWeather(
      CompleteWeatherParams params) async {
    final response =
        await DioHelper.getWeather(lat: params.lat, lon: params.lon);
    if (response.statusCode == 200) {
      return CompleteWeatherModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
