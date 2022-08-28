import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/domain/models/daily_weather/daily_weather.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/day_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/rain_possibility.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/temp_degree.dart';
import 'package:algoriza_weather/shared/functions.dart';
import 'package:flutter/material.dart';

class WeaklyWeather extends StatelessWidget {
  final AppCubit cubit;
  const WeaklyWeather({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h20),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cubit.completeWeather!.daily!.length,
          itemBuilder: (context, index) {
            DailyWeather dailyWeather = cubit.completeWeather!.daily![index];
            return Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(left: AppWidth.w15),
                        child:
                            DayName(name: getDayFromDate(dt: dailyWeather.dt!)),
                      )),
                  RainPossibility(rain: dailyWeather.rain ?? 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          ImagesManager.sun,
                          width: AppSize.s22,
                          height: AppSize.s22,
                        ),
                        SizedBox(width: AppWidth.w10),
                        Image.asset(
                          ImagesManager.night,
                          width: AppSize.s18,
                          height: AppSize.s18,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TempDegree(degree: dailyWeather.temp!.max!.floor()),
                        TempDegree(degree: dailyWeather.temp!.min!.floor()),
                      ],
                    ),
                  ),
                ]);
          },
          separatorBuilder: (context, index) => SizedBox(
            height: AppHeight.h15,
          ),
        ),
      ),
    );
  }
}
