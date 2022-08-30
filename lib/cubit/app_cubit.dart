import 'dart:math';

import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/chart_data/chart_data.dart';
import 'package:algoriza_weather/domain/models/city/city.dart';
import 'package:algoriza_weather/domain/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/domain/models/daily_weather/daily_weather.dart';
import 'package:algoriza_weather/domain/models/hourly_weather/hourly_weather.dart';
import 'package:algoriza_weather/services/api/dio_helper.dart';
import 'package:algoriza_weather/services/hive/city/city_to_cityHive.dart';
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

  List<City> allCities = []; // all egypt cities info
  List<City> searchCities = []; // cities which appear in search screen
  List<String> allCitiesNames =
      []; // cities names to show in drop down form field

  // favourite or current location information
  CityHive favLocation = HiveHelper.getCity(
      box: HiveHelper.favLocationBox!, key: HiveKeys.favLocation);

  // fill both allCities and allCitiesNames lists by their data
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

  // change favourite location from drop down form field
  void changeFavLocation({required City city}) {
    CityHive cityHive = cityToCityHive(city: city);
    favLocation = cityHive;
    HiveHelper.addCity(
        box: HiveHelper.favLocationBox!,
        key: HiveKeys.favLocation,
        cityHive: cityHive);
    getWeather(cityHive: cityHive);
  }

  CompleteWeather?
      completeWeather; // all weather details [currennt,hourly,daily]
  List<ChartData> chartData =
      []; // coordinates (x,y) for each tempreutre and its time ,hourly
  double minY = 0; // min value in y axis
  double maxY = 0; // max value in y axis

  void getWeather({@required CityHive? cityHive}) {
    if (cityHive == null) {
      // loading in app opening
      emit(AppLoadingState());
    } else {
      // loading when change favourite location
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

      // determine both minY , maxY values
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
      getOtherLocationsTemps();
      emit(GetWeatherState());
    }).catchError((error) {
      debugPrint("ERROR===>$error");
      emit(AppErrorState());
    });
  }

  // get temps for rest hours of the day
  void handelHourlyWeather({
    required CompleteWeather weather,
    required List<HourlyWeather> hourlyWeather,
  }) {
    TimeOfDay currentTime = TimeOfDay.now();
    for (int i = 0; i < 24; i++) {
      TimeOfDay time = getTime(uinxTime: weather.hourly![i].dt!);
      bool condition = currentTime.hour <=
          time.hour; // check if the time is after now or not
      if (condition) {
        chartData.add(ChartData(
          double.parse(time.hour.toString()),
          weather.hourly![i].temp!.roundToDouble(),
        ));
        hourlyWeather.add(weather.hourly![i]);
      }
    }
  }

  // other locations data which shown in drawer
  List<CityHive> otherLocations =
      HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);

  // get all other locations temps in app opening
  void getOtherLocationsTemps() {
    if (otherLocations.isNotEmpty) {
      for (var element in otherLocations) {
        // element
        addOtherLocation(
          cityHive: element,
          getAll: true,
        );
      }
      // emit(GetOtherLocationsTempsState());
    }
  }

  // remove city from other locations record
  void removeOtherLocation({required CityHive cityHive}) {
    HiveHelper.removeCity(
        box: HiveHelper.otherLocationsBox!, key: cityHive.cityId!.toString());
    otherLocations =
        HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
    emit(RemoveLocationState());
  }

  List<int> loadingCitiesIDs =
      []; // list of ids of cities which its data loading
  void addOtherLocation({required CityHive cityHive, bool? getAll}) {
    // not loading in app opening
    if (getAll != true) emit(GetCurrentWeatherLoadingState());
    loadingCitiesIDs.add(cityHive.cityId!);
    DioHelper.getCurrentWeather(
      lat: cityHive.latitude!.toString(),
      lon: cityHive.longitude!.toString(),
    ).then((value) {
      double temp = value.data['main']['temp']; // city current temp

      // add temp to city to update it in other locations record
      CityHive updateCity = CityHive(
        latitude: cityHive.latitude,
        longitude: cityHive.longitude,
        cityId: cityHive.cityId,
        name: cityHive.name,
        temp: temp.round(),
      );

      HiveHelper.addCity(
        box: HiveHelper.otherLocationsBox!,
        key: cityHive.cityId!.toString(),
        cityHive: updateCity,
      );
      otherLocations =
          HiveHelper.getBoxCities(box: HiveHelper.otherLocationsBox!);
      loadingCitiesIDs.remove(cityHive.cityId!);
      if (getAll != true) emit(GetCurrentWeatherState());
    }).catchError((error) {
      debugPrint("ERROR===>$error");
      emit(AppErrorState());
    });
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
