import 'package:algoriza_weather/core/errors/exceptions.dart';
import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/core/network/network_info.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/local/other_location_weather_local_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/remote/other_location_weather_remote_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/other_location_weather_repository.dart';
import 'package:dartz/dartz.dart';

class OtherLocationWeatherRepositoryImpl
    implements OtherLocationWeatherRepository {
  final NetworkInfo networkInfo;
  final OtherLocationWeatherRemoteDataSource
      otherLocationWeatherRemoteDataSource;
  final OtherLocationWeatherLocalDataSource otherLocationWeatherLocalDataSource;

  OtherLocationWeatherRepositoryImpl({
    required this.networkInfo,
    required this.otherLocationWeatherRemoteDataSource,
    required this.otherLocationWeatherLocalDataSource,
  });

  @override
  Future<Either<Failure, CityModel?>> getOtherLocationWeather(
      CityModel city) async {
    if (await networkInfo.isConnected) {
      try {
        CityModel response = await otherLocationWeatherRemoteDataSource
            .getOtherLocationWeather(city);
        otherLocationWeatherLocalDataSource.cacheOtherLocationWeather(
          response.cityId.toString(),
          response,
        );
        return Right(response);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        CityModel? response = otherLocationWeatherLocalDataSource
            .getOtherLocationWeather(city.cityId!.toString());
        if (response != null) {
          return Right(response);
        } else {
          return Left(CacheFailure());
        }
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
