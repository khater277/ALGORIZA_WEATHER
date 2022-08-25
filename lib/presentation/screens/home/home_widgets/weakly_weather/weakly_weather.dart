import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/day_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/rain_possibility.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/temp_degree.dart';
import 'package:flutter/material.dart';

class WeaklyWeather extends StatelessWidget {
  const WeaklyWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h8),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 7,
          itemBuilder: (context, index) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const DayName(),
                  const RainPossibility(),
                  Image.asset(
                    ImagesManager.sun,
                    width: AppSize.s22,
                    height: AppSize.s22,
                  ),
                  Image.asset(
                    ImagesManager.night,
                    width: AppSize.s18,
                    height: AppSize.s18,
                  ),
                  const TempDegree(degree: "34"),
                  const TempDegree(degree: "24"),
                ]);
          },
          separatorBuilder: (context, index) => SizedBox(
            height: AppHeight.h10,
          ),
        ),
      ),
    );
  }
}
