import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/fav_location/temp_degree.dart';
import 'package:flutter/material.dart';

class FavLocationDropDown extends StatelessWidget {
  final AppStates state;
  final AppCubit cubit;
  const FavLocationDropDown(
      {Key? key, required this.state, required this.cubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
        suffixIcon: TempretureDegree(
          state: state,
          temp: cubit.completeWeather == null
              ? null
              : cubit.completeWeather!.current!.temp!.round(),
        ),
      ),
      dropdownColor: AppColors.button,
      value: cubit.favLocation!.name,
      onChanged: (String? newValue) {
        CityModel city =
            cubit.allCities.firstWhere((element) => element.name == newValue);

        cubit.changeFavLocation(city: city);
      },
      items: cubit.allCitiesNames.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeightManager.medium,
                ),
          ),
        );
      }).toList(),
    );
  }
}
