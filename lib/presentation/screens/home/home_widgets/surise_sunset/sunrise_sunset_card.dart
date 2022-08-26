import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/surise_sunset/sun_action.dart';
import 'package:flutter/material.dart';

class SunriseSunsetCard extends StatelessWidget {
  final AppCubit cubit;
  const SunriseSunsetCard({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime sunsetDate = DateTime.fromMillisecondsSinceEpoch(
        cubit.currentWeather!.sys!.sunset! * 1000);
    TimeOfDay timeOfSunset = TimeOfDay.fromDateTime(sunsetDate);

    DateTime sunriseDate = DateTime.fromMillisecondsSinceEpoch(
        cubit.currentWeather!.sys!.sunrise! * 1000);
    TimeOfDay timeOfSunrise = TimeOfDay.fromDateTime(sunriseDate);

    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppHeight.h10,
          horizontal: AppWidth.w10,
        ),
        child: Row(
          children: [
            Expanded(
              child: SunAction(
                title: StringsManager.sunset,
                time:
                    "${timeOfSunset.hourOfPeriod}:${timeOfSunset.minute} ${timeOfSunset.period.name}",
                image: ImagesManager.sunset,
              ),
            ),
            Expanded(
              child: SunAction(
                title: StringsManager.sunrise,
                time:
                    "${timeOfSunrise.hourOfPeriod}:${timeOfSunrise.minute} ${timeOfSunrise.period.name}",
                image: ImagesManager.sunrise,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
