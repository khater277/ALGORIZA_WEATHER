import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class TempDetails extends StatelessWidget {
  final AppCubit cubit;
  const TempDetails({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double min = cubit.currentWeather!.main!.temp_min!;
    double max = cubit.currentWeather!.main!.temp_max!;
    double feelsLike = cubit.currentWeather!.main!.feels_like!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$max° / $min° ${StringsManager.feelsLike} $feelsLike°",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "sunday, 2:55 ${StringsManager.pm}",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
