import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class FavLocationTemp extends StatelessWidget {
  const FavLocationTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppCubit cubit = AppCubit.get(context);
    return Padding(
      padding: EdgeInsets.only(left: AppWidth.w20),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: AppSize.s12,
          ),
          SizedBox(
            width: AppWidth.w3,
          ),
          Expanded(
            child: Text(
              "${cubit.allCities[0].city}",
              style: Theme.of(context).textTheme.titleSmall!,
            ),
          ),
          Image.asset(
            ImagesManager.sun,
            width: AppSize.s20,
            height: AppSize.s20,
          ),
          SizedBox(
            width: AppWidth.w5,
          ),
          Text(
            "${cubit.completeWeather!.current!.temp}°",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeightManager.medium,
                  fontSize: FontSize.s12,
                  color: ColorManager.lightGrey,
                ),
          ),
        ],
      ),
    );
  }
}
