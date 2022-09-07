import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/fav_location/dorp_down_form_field.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/fav_location/fav_location_title.dart';
import 'package:flutter/material.dart';

class FavLocation extends StatelessWidget {
  final AppStates state;
  const FavLocation({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavLocationTitile(),
        SizedBox(height: AppHeight.h25),
        FavLocationDropDown(
          state: state,
          cubit: AppCubit.get(context),
        ),
        // const FavLocationTemp(),
        SizedBox(height: AppHeight.h20),
      ],
    );
  }
}
