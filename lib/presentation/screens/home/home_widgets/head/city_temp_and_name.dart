import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CityTempAndName extends StatelessWidget {
  final AppCubit cubit;
  const CityTempAndName({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${cubit.currentWeather!.main!.temp}",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "°",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: FontSize.s38),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "${cubit.currentWeather!.name}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(width: AppWidth.w2),
                  Icon(
                    Icons.location_on,
                    size: AppSize.s16,
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          ImagesManager.sun,
          width: AppSize.s60,
          height: AppSize.s60,
        ),
      ],
    );
  }
}
