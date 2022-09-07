import 'package:algoriza_weather/core/utils/app_images.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/core/utils/constatnts.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/surise_sunset/sun_action.dart';
import 'package:flutter/material.dart';

class SunriseSunsetCard extends StatefulWidget {
  final AppCubit cubit;
  const SunriseSunsetCard({Key? key, required this.cubit}) : super(key: key);

  @override
  State<SunriseSunsetCard> createState() => _SunriseSunsetCardState();
}

class _SunriseSunsetCardState extends State<SunriseSunsetCard> {
  late TimeOfDay timeOfSunset;
  late TimeOfDay timeOfSunrise;
  @override
  void initState() {
    timeOfSunset = Constants.getTime(
        uinxTime: widget.cubit.completeWeather!.current!.sunset!);

    timeOfSunrise = Constants.getTime(
        uinxTime: widget.cubit.completeWeather!.current!.sunrise!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                title: AppStrings.sunset,
                time:
                    "${timeOfSunset.hourOfPeriod}:${timeOfSunset.minute} ${timeOfSunset.period.name}",
                image: AppImages.sunset,
              ),
            ),
            Expanded(
              child: SunAction(
                title: AppStrings.sunrise,
                time:
                    "${timeOfSunrise.hourOfPeriod}:${timeOfSunrise.minute} ${timeOfSunrise.period.name}",
                image: AppImages.sunrise,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
