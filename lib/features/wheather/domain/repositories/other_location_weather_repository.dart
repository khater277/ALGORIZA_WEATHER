import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:dartz/dartz.dart';

abstract class OtherLocationWeatherRepository {
  Future<Either<Failure, CityModel?>> getOtherLocationWeather(CityModel city);
}
