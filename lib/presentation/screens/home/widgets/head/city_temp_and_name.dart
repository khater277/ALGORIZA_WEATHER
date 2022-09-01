import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class CityTempAndName extends StatefulWidget {
  final AppCubit cubit;
  const CityTempAndName({Key? key, required this.cubit}) : super(key: key);

  @override
  State<CityTempAndName> createState() => _CityTempAndNameState();
}

class _CityTempAndNameState extends State<CityTempAndName> {
  late bool beforeSunset;
  late bool afterSunrise;
  late bool isDay;
  late bool isRain;
  late bool isClouds;
  late String dayImage;
  late String nightImage;
  @override
  void initState() {
    beforeSunset = DateTime.now().isBefore(DateTime.fromMillisecondsSinceEpoch(
        widget.cubit.completeWeather!.current!.sunset! * 1000));
    afterSunrise = DateTime.now().isAfter(DateTime.fromMillisecondsSinceEpoch(
        widget.cubit.completeWeather!.current!.sunrise! * 1000));
    isDay = beforeSunset && afterSunrise;
    isRain = widget.cubit.completeWeather!.current!.weather![0].main == "Rain";
    isClouds =
        widget.cubit.completeWeather!.current!.weather![0].main == "Clouds";
    dayImage = isRain
        ? ImagesManager.rainyDay
        : isClouds
            ? ImagesManager.cloudyDay
            : ImagesManager.sun;

    nightImage = isRain
        ? ImagesManager.rainyNight
        : isClouds
            ? ImagesManager.cloudyNight
            : ImagesManager.night;
    super.initState();
  }

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
                    "${widget.cubit.completeWeather!.current!.temp!.round()}",
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
                    "${widget.cubit.favLocation.name}",
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
          isDay ? dayImage : nightImage,
          width: AppSize.s60,
          height: AppSize.s60,
        ),
      ],
    );
  }
}
