import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/surise_sunset/sun_action.dart';
import 'package:flutter/material.dart';

class SunriseSunsetCard extends StatelessWidget {
  const SunriseSunsetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppHeight.h10,
          horizontal: AppWidth.w10,
        ),
        child: Row(
          children: const [
            Expanded(
              child: SunAction(
                title: "Sunset",
                time: "7:00 pm",
                image: ImagesManager.sunset,
              ),
            ),
            Expanded(
              child: SunAction(
                title: "Sunrise",
                time: "5:00 am",
                image: ImagesManager.sunrise,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
