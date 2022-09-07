import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/hourly_temp_chart/chart.dart';
import 'package:flutter/material.dart';

class HourlyTemps extends StatelessWidget {
  const HourlyTemps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: LineDefault(),
    );
  }
}
