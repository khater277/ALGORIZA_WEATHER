import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/screens/home/widgets/hourly_temp_chart/chart.dart';
import 'package:flutter/material.dart';

class HourlyTemps extends StatelessWidget {
  final AppCubit cubit;
  const HourlyTemps({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: LineDefault(
        cubit: cubit,
      ),
    );
  }
}
