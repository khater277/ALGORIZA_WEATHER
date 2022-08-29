import 'dart:math';

import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/chart_data/chart_data.dart';
import 'package:algoriza_weather/domain/models/city/city.dart';
import 'package:algoriza_weather/domain/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/domain/models/daily_weather/daily_weather.dart';
import 'package:algoriza_weather/domain/models/hourly_weather/hourly_weather.dart';
import 'package:algoriza_weather/services/api/dio_helper.dart';
import 'package:algoriza_weather/services/hive/keys.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';
import 'package:algoriza_weather/services/hive/hive_helper.dart';
import 'package:algoriza_weather/shared/functions.dart';
import 'package:algoriza_weather/shared/saved_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  void changeTheme() {
    isDark = !isDark;
    GetStorage().write('isDark', isDark);
    emit(ChangeThemeState());
  }

  List<City> allCities = [];
  List<City> searchCities = [];
  List<String> allCitiesNames = [];
  CityHive favLocation = HiveHelper.getCity(
      box: HiveHelper.favLocationBox!, key: HiveKeys.favLocation);
  void handelAllCities() {
    allCities = [];
    allCitiesNames = [];
    for (var city in cities) {
      City cityModel = City.fromJson(city);
      allCitiesNames.add(cityModel.name!);
      allCities.add(cityModel);
    }
    searchCities = allCities;
    emit(HandelAllCitiesState());
  }

  void changeFavLocation({required City city}) {
    CityHive cityHive = CityHive(
      latitude: city.latitude,
      longitude: city.longitude,
      cityId: city.cityId,
      name: city.name,
    );
    favLocation = cityHive;
    HiveHelper.putCity(
        box: HiveHelper.favLocationBox!, key: HiveKeys.favLocation, city: city);
    getWeather(cityHive: cityHive);
    // emit(ChangeFavLocationState());
  }

  CompleteWeather? completeWeather;
  List<ChartData> chartData = [];
  double minY = 0;
  double maxY = 0;

  void getWeather({@required CityHive? cityHive}) {
    if (cityHive == null) {
      emit(AppLoadingState());
    } else {
      emit(GetFavLocationWeatherLoadingState());
    }
    DioHelper.getWeather(
      lat: favLocation.latitude!.toString(),
      lon: favLocation.longitude!.toString(),
    ).then((value) {
      chartData = [];
      minY = 0;
      maxY = 0;
      // weather data from api
      CompleteWeather weather = CompleteWeather.fromJson(value.data);
      // 7 days weather info
      List<DailyWeather> dailyWeather = [];
      for (int i = 0; i < 7; i++) {
        dailyWeather.add(weather.daily![i]);
      }
      // 24 hour weather info
      List<HourlyWeather> hourlyWeather = [];
      handelHourlyWeather(weather: weather, hourlyWeather: hourlyWeather);

      minY = chartData.first.y;
      maxY = chartData.first.y;
      for (var element in chartData) {
        minY = min(minY, element.y);
        maxY = max(maxY, element.y);
      }

      // saved weather data
      completeWeather = CompleteWeather.fromJson(value.data).copyWith(
        daily: dailyWeather,
        hourly: hourlyWeather,
      );
      emit(GetWeatherState());
    }).catchError((error) {
      debugPrint("ERROR===>$error");
      emit(AppErrorState());
    });
  }

  void handelHourlyWeather({
    required CompleteWeather weather,
    required List<HourlyWeather> hourlyWeather,
  }) {
    TimeOfDay currentTime = TimeOfDay.now();
    for (int i = 0; i < 24; i++) {
      TimeOfDay time = getTime(uinxTime: weather.hourly![i].dt!);
      bool condition = currentTime.hour <= time.hour;
      if (condition) {
        chartData.add(ChartData(
          double.parse(time.hour.toString()),
          weather.hourly![i].temp!.roundToDouble(),
        ));
        hourlyWeather.add(weather.hourly![i]);
      }
    }
  }

  List<CityHive> otherLocations =
      HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
  void addNewLocation({
    required CityHive cityHive,
    required int index,
  }) {
    emit(AddNewLocationLoadingState());
    HiveHelper.addCity(
      box: HiveHelper.otherLocationsBox!,
      city: cityHive,
      index: index,
    );
    otherLocations =
        HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
    print(otherLocations);
    emit(AddNewLocationState());
  }

  void removeLocation({required int index}) {
    emit(AddNewLocationLoadingState());
    HiveHelper.removeCity(box: HiveHelper.otherLocationsBox!, index: index);
    otherLocations =
        HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
    emit(RemoveLocationState());
  }

  void citySearch({required String name}) {
    searchCities = allCities.where((element) {
      return element.name!.toLowerCase().contains(name.toLowerCase());
    }).toList();
    print(searchCities.length);
    emit(CitySearchState());
  }

  void clearSearch() {
    searchCities = allCities;
    emit(CitySearchState());
  }
}
