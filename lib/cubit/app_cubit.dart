import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/cities/cities.dart';
import 'package:algoriza_weather/domain/models/city_model/city_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  List<CityModel> allCities = [];
  void handelAllCities() {
    allCities = [];
    for (var city in cities) {
      CityModel cityModel = CityModel.fromJson(city);
      allCities.add(cityModel);
    }
    emit(HandelAllCitiesState());
  }
}
