import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/core/network/network_info.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/local/complete_wheather_local_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/remote/complete_wheather_remote_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/complete_weather_repository.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_complete_weather.dart';
import 'package:dartz/dartz.dart';

class CompleteWeatherRepositoryImpl implements CompleteWeatherRepository {
  final NetworkInfo networkInfo;
  final CompleteWheaterRemoteDataSource completeWheaterRemoteDataSource;
  final CompleteWheaterLocalDataSource completeWheaterLocalDataSource;

  CompleteWeatherRepositoryImpl({
    required this.networkInfo,
    required this.completeWheaterRemoteDataSource,
    required this.completeWheaterLocalDataSource,
  });
  @override
  Future<Either<Failure, CompleteWeatherModel>> getCompleteWeather(
      CompleteWeatherParams params) async {
    if (await networkInfo.isConnected) {
      try {
        final reomteCompleteWeather =
            await completeWheaterRemoteDataSource.getCompleteWeather(params);
        completeWheaterLocalDataSource
            .cacheCompleteWeather(reomteCompleteWeather);
        return Right(reomteCompleteWeather);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localCompleteWeather =
            completeWheaterLocalDataSource.getLastCompleteWeather();
        completeWheaterLocalDataSource
            .cacheCompleteWeather(localCompleteWeather);
        return Right(localCompleteWeather);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
