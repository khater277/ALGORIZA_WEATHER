import 'dart:math';

import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/chart_data/chart_data.dart';
import 'package:algoriza_weather/domain/models/city_model/city_model.dart';
import 'package:algoriza_weather/domain/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/domain/models/daily_weather/daily_weather.dart';
import 'package:algoriza_weather/domain/models/hourly_weather/hourly_weather.dart';
import 'package:algoriza_weather/services/dio/dio_helper.dart';
import 'package:algoriza_weather/services/dio/dio_helper.dart';
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

  List<CityModel> allCities = [];
  List<String> allCitiesNames = [];
  String? currentLocation;
  void handelAllCities() {
    allCities = [];
    allCitiesNames = [];
    for (var city in cities) {
      CityModel cityModel = CityModel.fromJson(city);
      allCitiesNames.add(cityModel.city!);
      allCities.add(cityModel);
    }
    currentLocation = allCities.first.city!;
    emit(HandelAllCitiesState());
  }

  void changeFavLocation({required String location}) {
    currentLocation = location;
    emit(ChangeFavLocationState());
  }

  CompleteWeather? completeWeather;
  List<ChartData> chartData = [];
  double minY = 0;
  double maxY = 0;

  void getWeather() {
    emit(AppLoadingState());
    DioHelper.getWeather(
      lat: allCities[0].lat!,
      lon: allCities[0].lng!,
    ).then((value) {
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
      emit(GetCurrentWeatherState());
    }).catchError((error) {
      print("ERROR===>$error");
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
      bool condition = currentTime.hour <= time.hour || (time.hour - 19 >= 0);
      if (condition) {
        chartData.add(ChartData(
          double.parse(time.hour.toString()),
          weather.hourly![i].temp!,
        ));
        hourlyWeather.add(weather.hourly![i]);
      }
    }
  }
}
