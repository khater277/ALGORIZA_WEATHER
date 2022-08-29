import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/domain/models/city/city.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/temp_degree.dart';
import 'package:flutter/material.dart';

class FavLocationDropDown extends StatelessWidget {
  final AppCubit cubit;
  final AppStates state;
  const FavLocationDropDown(
      {Key? key, required this.cubit, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
        suffixIcon: TempretureDegree(
          state: state,
        ),
      ),
      dropdownColor: ColorManager.button,
      value: cubit.favLocation.name,
      onChanged: (String? newValue) {
        City city =
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
