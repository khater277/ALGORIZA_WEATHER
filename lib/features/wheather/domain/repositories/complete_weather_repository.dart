import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_complete_weather.dart';
import 'package:dartz/dartz.dart';

abstract class CompleteWeatherRepository {
  Future<Either<Failure, CompleteWeatherModel?>> getCompleteWeather(
      CompleteWeatherParams params);
}
