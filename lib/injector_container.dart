import 'package:algoriza_weather/core/network/network_info.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/local/complete_wheather_local_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/local/other_location_weather_local_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/remote/complete_wheather_remote_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/remote/other_location_weather_remote_data_source.dart';
import 'package:algoriza_weather/features/wheather/data/repositories/complete_weather_repository_imp.dart';
import 'package:algoriza_weather/features/wheather/data/repositories/other_location_weather_repository_impl.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/complete_weather_repository.dart';
import 'package:algoriza_weather/features/wheather/domain/repositories/other_location_weather_repository.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_other_location_weather.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Features

  //Cubits
  sl.registerFactory(() => AppCubit(
        getCompleteWeatherUseCase: sl(),
        getOtherLocationsWeatherUseCase: sl(),
      ));

// s
  // Usecases
  sl.registerLazySingleton(
      () => GetCompleteWeather(completeWeatherRepository: sl()));

  sl.registerLazySingleton(
      () => GetOtherLocationWeather(otherLocationWeatherRepository: sl()));

  // Repository
  sl.registerLazySingleton<CompleteWeatherRepository>(
      () => CompleteWeatherRepositoryImpl(
            networkInfo: sl(),
            completeWheaterRemoteDataSource: sl(),
            completeWheaterLocalDataSource: sl(),
          ));

  sl.registerLazySingleton<OtherLocationWeatherRepository>(() =>
      OtherLocationWeatherRepositoryImpl(
          networkInfo: sl(),
          otherLocationWeatherRemoteDataSource: sl(),
          otherLocationWeatherLocalDataSource: sl()));

  // Data source
  sl.registerLazySingleton<CompleteWheaterLocalDataSource>(
      () => CompleteWheaterLocalDataSourceImpl());

  sl.registerLazySingleton<CompleteWheaterRemoteDataSource>(
      () => CompleteWheaterRemoteDataSourceImpl());

  sl.registerLazySingleton<OtherLocationWeatherLocalDataSource>(
      () => OtherLocationWeatherLocalDataSourceImpl());

  sl.registerLazySingleton<OtherLocationWeatherRemoteDataSource>(
      () => OtherLocationWeatherRemoteDataSourceImpl());

  /// Core
  // Network info
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  /// External
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
