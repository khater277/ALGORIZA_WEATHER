import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/core/utils/app_images.dart';

import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/drawer_temp.dart';
import 'package:flutter/material.dart';

class TempretureDegree extends StatelessWidget {
  final AppStates state;
  final int? temp;
  const TempretureDegree({Key? key, required this.state, this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          AppImages.sun,
          width: AppSize.s20,
          height: AppSize.s20,
        ),
        SizedBox(
          width: AppWidth.w5,
        ),
        if (state is GetFavLocationWeatherLoadingState)
          SizedBox(
            width: AppWidth.w16,
            height: AppHeight.h16,
            child: const CircularProgressIndicator(
              strokeWidth: 2,
              color: AppColors.lightGrey,
            ),
          )
        else
          DrawerTemp(temp: temp),
      ],
    );
  }
}
