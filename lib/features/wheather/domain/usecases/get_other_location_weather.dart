import 'package:algoriza_weather/core/base_usecase/base_usecase.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/other_location_weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:algoriza_weather/core/errors/failures.dart';

class GetOtherLocationWeather implements BaseUseCase<CityModel?, CityModel> {
  final OtherLocationWeatherRepository otherLocationWeatherRepository;

  GetOtherLocationWeather({required this.otherLocationWeatherRepository});
  @override
  Future<Either<Failure, CityModel?>> call(CityModel city) =>
      otherLocationWeatherRepository.getOtherLocationWeather(city);
}
