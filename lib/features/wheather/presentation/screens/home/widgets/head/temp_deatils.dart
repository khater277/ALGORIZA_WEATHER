import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/constatnts.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class TempDetails extends StatefulWidget {
  final AppCubit cubit;
  const TempDetails({Key? key, required this.cubit}) : super(key: key);

  @override
  State<TempDetails> createState() => _TempDetailsState();
}

class _TempDetailsState extends State<TempDetails> {
  late int min;
  late int max;
  late int feelsLike;
  late DateTime date;
  late String dayName;
  late String hour;
  late String minutes;
  late TimeOfDay timeOfDay;
  @override
  void initState() {
    min = widget.cubit.completeWeather!.daily![0].temp!.min!.round();
    max = widget.cubit.completeWeather!.daily![0].temp!.max!.round();
    feelsLike = widget.cubit.completeWeather!.current!.feels_like!.round();
    date = DateTime.fromMillisecondsSinceEpoch(
        widget.cubit.completeWeather!.current!.dt! * 1000);
    timeOfDay = TimeOfDay.fromDateTime(date);
    dayName = Constants.getDayFromDate(
        dt: widget.cubit.completeWeather!.current!.dt!);
    hour = timeOfDay.hour == 0 ? "12" : timeOfDay.hourOfPeriod.toString();
    minutes = timeOfDay.minute > 9
        ? timeOfDay.minute.toString()
        : "0${timeOfDay.minute}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$max° / $min° ${AppStrings.feelsLike} $feelsLike°",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "$dayName $hour:$minutes ${timeOfDay.period.name}",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
