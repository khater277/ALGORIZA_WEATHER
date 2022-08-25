import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
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
                title: StringsManager.sunset,
                time: "7:00 ${StringsManager.pm}",
                image: ImagesManager.sunset,
              ),
            ),
            Expanded(
              child: SunAction(
                title: StringsManager.sunrise,
                time: "5:00 ${StringsManager.am}",
                image: ImagesManager.sunrise,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
