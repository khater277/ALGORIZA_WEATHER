import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppLoadingState extends AppStates {}

class GetFavLocationWeatherLoadingState extends AppStates {}

class AddNewLocationLoadingState extends AppStates {}

class GetCompleteWeatherErrorState extends AppStates {}

class GetCurrentWeatherErrorState extends AppStates {}

class ChangeThemeState extends AppStates {}

class HandelAllCitiesState extends AppStates {}

class ChangeFavLocationState extends AppStates {}

class GetWeatherState extends AppStates {}

class GetCurrentWeatherState extends AppStates {}

class GetOtherLocationsTempsState extends AppStates {}

class GetCurrentWeatherLoadingState extends AppStates {}

class GetOtherLocationsWeatherState extends AppStates {}

class CitySearchState extends AppStates {}

class AddNewLocationState extends AppStates {}

class RemoveLocationState extends AppStates {}

class GetCompleteWeatherLoadingState extends AppStates {}

class GetCompleteWeatherErrorrState extends AppStates {
  final String msg;

  GetCompleteWeatherErrorrState({required this.msg});
}

class GetCompleteWeatherSuccessState extends AppStates {
  final CompleteWeatherModel completeWeatherModel;

  GetCompleteWeatherSuccessState({required this.completeWeatherModel});
}

// class GetOtherLocations