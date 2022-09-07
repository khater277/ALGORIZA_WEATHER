import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayName extends StatelessWidget {
  final String name;
  const DayName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name != DateFormat('EEEE').format(DateTime.now())
          ? name
          : AppStrings.today,
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(fontSize: FontSize.s15),
    );
  }
}
