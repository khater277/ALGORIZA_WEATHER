import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
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
          : StringsManager.today,
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(fontSize: FontSize.s15),
    );
  }
}
