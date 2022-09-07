import 'package:algoriza_weather/core/utils/constatnts.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/core/utils/app_images.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/data/models/complete_weather/complete_weather.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/weakly_weather/day_name.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/weakly_weather/rain_possibility.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/weakly_weather/temp_degree.dart';
import 'package:flutter/material.dart';

class WeaklyWeather extends StatefulWidget {
  final AppCubit cubit;
  const WeaklyWeather({Key? key, required this.cubit}) : super(key: key);

  @override
  State<WeaklyWeather> createState() => _WeaklyWeatherState();
}

class _WeaklyWeatherState extends State<WeaklyWeather> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h20),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.cubit.completeWeather!.daily!.length,
          itemBuilder: (context, index) {
            DailyWeather dailyWeather =
                widget.cubit.completeWeather!.daily![index];
            return Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(left: AppWidth.w15),
                        child: DayName(
                            name:
                                Constants.getDayFromDate(dt: dailyWeather.dt!)),
                      )),
                  RainPossibility(rain: dailyWeather.rain ?? 0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          AppImages.sun,
                          width: AppSize.s22,
                          height: AppSize.s22,
                        ),
                        SizedBox(width: AppWidth.w10),
                        Image.asset(
                          AppImages.night,
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
