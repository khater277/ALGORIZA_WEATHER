import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/widgets/drawer_temp.dart';
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
          ImagesManager.sun,
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
              color: ColorManager.lightGrey,
            ),
          )
        else
          DrawerTemp(temp: temp),
      ],
    );
  }
}
