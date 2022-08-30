import 'package:algoriza_weather/services/api/end_points.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://api.openweathermap.org/data/2.5/',
          receiveDataWhenStatusError: true,
          //connectTimeout: 20 * 1000,
          //receiveTimeout: 20 * 1000,
          headers: {'Content-Type': 'application/json'}),
    );
  }

  static Future<Response> getWeather({
    required String lat,
    required String lon,
  }) async {
    Map<String, dynamic> queryParameters = {
      'lat': lat,
      'lon': lon,
      'exclude': "minutely,alerts",
      'units': 'metric',
      'appid': 'df46b523163a6af9441ef081105f4104'
    };
    return await dio!.get(
      EndPoints.oneCall,
      queryParameters: queryParameters,
    );
  }

  static Future<Response> getCurrentWeather({
    required String lat,
    required String lon,
  }) async {
    Map<String, dynamic> queryParameters = {
      'lat': lat,
      'lon': lon,
      'units': 'metric',
      'appid': 'df46b523163a6af9441ef081105f4104'
    };
    return await dio!.get(
      EndPoints.currentWeather,
      queryParameters: queryParameters,
    );
  }
}
