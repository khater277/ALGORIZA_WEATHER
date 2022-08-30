import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/dorp_down_form_field.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/fav_location_title.dart';
import 'package:flutter/material.dart';

class FavLocation extends StatelessWidget {
  final AppCubit cubit;
  final AppStates state;
  const FavLocation({Key? key, required this.cubit, required this.state})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavLocationTitile(),
        SizedBox(height: AppHeight.h25),
        FavLocationDropDown(
          cubit: cubit,
          state: state,
        ),
        // const FavLocationTemp(),
        SizedBox(height: AppHeight.h20),
      ],
    );
  }
}
