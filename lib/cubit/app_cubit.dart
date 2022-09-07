import 'dart:math';

import 'package:algoriza_weather/core/errors/failures.dart';
import 'package:algoriza_weather/core/hive/hive_helper.dart';
import 'package:algoriza_weather/core/hive/keys.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/constatnts.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/features/wheather/data/datasources/cities/cities.dart';
import 'package:algoriza_weather/features/wheather/data/models/chart_data/chart_data.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_complete_weather.dart';
import 'package:algoriza_weather/features/wheather/domain/usecases/get_other_location_weather.dart';
import 'package:algoriza_weather/shared/saved_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class AppCubit extends Cubit<AppStates> {
  final GetCompleteWeather getCompleteWeatherUseCase;
  final GetOtherLocationWeather getOtherLocationsWeatherUseCase;
  AppCubit({
    required this.getCompleteWeatherUseCase,
    required this.getOtherLocationsWeatherUseCase,
  }) : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  void changeTheme() {
    isDark = !isDark;
    GetStorage().write('isDark', isDark);
    emit(ChangeThemeState());
  }

  List<CityModel> allCities = [];

  /// all egypt cities info
  List<CityModel> searchCities = [];

  /// cities which appear in search screen
  List<String> allCitiesNames = [];

  /// cities names to show in drop down form field

  /// favourite or current location information
  CityModel? favLocation = HiveHelper.getCity(
      box: HiveHelper.favLocationBox!, key: HiveKeys.favLocation);

  /// fill both allCities and allCitiesNames lists by their data
  void handelAllCities() {
    allCities = [];
    allCitiesNames = [];
    for (var city in cities) {
      CityModel cityModel = CityModel.fromJson(city);
      allCitiesNames.add(cityModel.name!);
      allCities.add(cityModel);
    }
    searchCities = allCities;
    emit(HandelAllCitiesState());
  }

  /// change favourite location from drop down form field
  void changeFavLocation({required CityModel city}) async {
    favLocation = city;
    HiveHelper.putCity(
      box: HiveHelper.favLocationBox!,
      key: HiveKeys.favLocation,
      city: city,
    );
    await getCompleteWeather(city: city);
  }

  CompleteWeatherModel? completeWeather;

  /// all weather details [currennt,hourly,daily]
  List<ChartData> chartData = [];

  /// coordinates (x,y) for each tempreutre and its time ,hourly
  double minY = 0;

  /// min value in y axis
  double maxY = 0;

  /// max value in y axis

  Future<void> getCompleteWeather({CityModel? city}) async {
    if (city == null) {
      /// loading in app opening
      emit(GetCompleteWeatherLoadingState());
    } else {
      /// loading when change favourite location
      emit(GetFavLocationWeatherLoadingState());
    }

    Either<Failure, CompleteWeatherModel> response =
        await getCompleteWeatherUseCase(CompleteWeatherParams(
      lat: favLocation!.latitude.toString(),
      lon: favLocation!.longitude.toString(),
    ));
    response.fold(
      (failure) {
        // _otherLocationsNullTemps();
        emit(GetCompleteWeatherErrorrState(
            msg: _failureToMSG(failure: failure)));
      },
      (completeWeatherModel) async {
        _handelGetCompleteWeatherSuccess(
            completeWeatherModel: completeWeatherModel);
      },
    );
  }

  void _handelGetCompleteWeatherSuccess(
      {required CompleteWeatherModel completeWeatherModel}) {
    chartData = [];
    minY = 0;
    maxY = 0;

    /// 7 days weather info
    List<DailyWeather> dailyWeather = [];
    _handelDailyWeather(
        weather: completeWeatherModel, dailyWeather: dailyWeather);

    /// 24 hour weather info
    List<HourlyWeather> hourlyWeather = [];
    _handelHourlyWeather(
        weather: completeWeatherModel, hourlyWeather: hourlyWeather);

    /// determine both minY , maxY values
    _handelYMinMax();

    /// saved complete weather data
    completeWeather = completeWeatherModel.copyWith(
      daily: dailyWeather,
      hourly: hourlyWeather,
    );
    getOtherLocationsTemps();
    emit(GetCompleteWeatherSuccessState(
        completeWeatherModel: completeWeatherModel));
  }

  String _failureToMSG({required Failure failure}) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppStrings.serverFailure;
      case CacheFailure:
        return AppStrings.cacheFailure;

      default:
        return AppStrings.unexpectedError;
    }
  }

  // get weather for 7 days
  void _handelDailyWeather({
    required CompleteWeatherModel weather,
    required List<DailyWeather> dailyWeather,
  }) {
    for (int i = 0; i < 7; i++) {
      dailyWeather.add(weather.daily![i]);
    }
  }

  // get temps for rest hours of the day
  void _handelHourlyWeather({
    required CompleteWeatherModel weather,
    required List<HourlyWeather> hourlyWeather,
  }) {
    TimeOfDay currentTime = TimeOfDay.now();
    for (int i = 0; i < 24; i++) {
      TimeOfDay time = Constants.getTime(uinxTime: weather.hourly![i].dt!);
      bool afterNow = currentTime.hour <=
          time.hour; // check if the time is after now or not
      if (afterNow) {
        chartData.add(ChartData(
          double.parse(time.hour.toString()),
          weather.hourly![i].temp!.roundToDouble(),
        ));
        hourlyWeather.add(weather.hourly![i]);
      }
    }
  }

  void _handelYMinMax() {
    minY = chartData.first.y;
    maxY = chartData.first.y;
    for (var element in chartData) {
      minY = min(minY, element.y);
      maxY = max(maxY, element.y);
    }
  }

  // set all temps in other locations equal null
  void _otherLocationsNullTemps() {
    for (CityModel element in otherLocations!) {
      CityModel updateCity = element.copyWith(temp: null);

      HiveHelper.putCity(
        box: HiveHelper.otherLocationsBox!,
        key: element.cityId!.toString(),
        city: updateCity,
      );
      otherLocations =
          HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
    }
  }

  // other locations data which shown in drawer
  List<CityModel>? otherLocations =
      HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);

  // get all other locations temps in app opening
  void getOtherLocationsTemps() {
    if (otherLocations!.isNotEmpty) {
      for (var element in otherLocations!) {
        addOtherLocation(
          city: element,
          getAll: true,
        );
      }
      // emit(GetOtherLocationsTempsState());
    }
  }

  // remove city from other locations record
  void removeOtherLocation({required CityModel city}) {
    HiveHelper.removeCity(
        box: HiveHelper.otherLocationsBox!, key: city.cityId!.toString());
    otherLocations =
        HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
    emit(RemoveLocationState());
  }

  List<int> loadingCitiesIDs =
      []; // list of ids of cities which its data loading

  Future<void> addOtherLocation({required CityModel city, bool? getAll}) async {
    // not loading in app opening
    if (getAll != true) emit(GetCurrentWeatherLoadingState());
    loadingCitiesIDs.add(city.cityId!);

    Either<Failure, CityModel> response =
        await getOtherLocationsWeatherUseCase(city);

    response.fold(
      (failure) => emit(GetCurrentWeatherErrorState()),
      (cityModel) {
        otherLocations =
            HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
        loadingCitiesIDs.remove(city.cityId!);
        debugPrint(otherLocations!.length.toString());
        if (getAll != true) emit(GetCurrentWeatherState());
      },
    );
  }

  void citySearch({required String name}) {
    searchCities = allCities.where((element) {
      return element.name!.toLowerCase().contains(name.toLowerCase());
    }).toList();
    debugPrint(searchCities.length.toString());
    emit(CitySearchState());
  }

  void clearSearch() {
    searchCities = allCities;
    emit(CitySearchState());
  }
}
