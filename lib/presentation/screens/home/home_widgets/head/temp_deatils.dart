import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class TempDetails extends StatelessWidget {
  final AppCubit cubit;
  const TempDetails({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double min = cubit.completeWeather!.daily![0].temp!.min!;
    double max = cubit.completeWeather!.daily![0].temp!.max!;
    double feelsLike = cubit.completeWeather!.current!.feels_like!;

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
