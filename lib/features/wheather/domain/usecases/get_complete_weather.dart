import 'package:algoriza_weather/core/base_usecase/base_usecase.dart';
import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/complete_weather_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetCompleteWeather
    implements BaseUseCase<CompleteWeatherModel, CompleteWeatherParams> {
  final CompleteWeatherRepository completeWeatherRepository;

  GetCompleteWeather({required this.completeWeatherRepository});
  @override
  Future<Either<Failure, CompleteWeatherModel>> call(
          CompleteWeatherParams params) =>
      completeWeatherRepository.getCompleteWeather(params);
}

class CompleteWeatherParams extends Equatable {
  final String lat;
  final String lon;

  const CompleteWeatherParams({
    required this.lat,
    required this.lon,
  });
  @override
  List<Object?> get props => [
        lat,
        lon,
      ];
}
