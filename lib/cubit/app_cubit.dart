import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/city_model/city_model.dart';
import 'package:algoriza_weather/domain/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/services/dio/dio_helper.dart';
import 'package:algoriza_weather/services/dio/dio_helper.dart';
import 'package:algoriza_weather/shared/saved_data.dart';
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
  void handelAllCities() {
    allCities = [];
    for (var city in cities) {
      CityModel cityModel = CityModel.fromJson(city);
      allCities.add(cityModel);
    }
    emit(HandelAllCitiesState());
  }

  CompleteWeather? completeWeather;
  void getWeather() {
    emit(AppLoadingState());
    DioHelper.getWeather(
      lat: allCities[0].lat!,
      lon: allCities[0].lng!,
    ).then((value) {
      // print(value.data);
      // Map<String, dynamic> data = value.data;
      completeWeather = CompleteWeather.fromJson(value.data);
      // print(currentWeather!.name);
      emit(GetCurrentWeatherState());
    }).catchError((error) {
      print("ERROR===>$error");
      emit(AppErrorState());
    });
  }
}
