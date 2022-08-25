import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class DayName extends StatelessWidget {
  const DayName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Today",
      style: Theme.of(context)
          .textTheme
          .displayMedium!
          .copyWith(fontSize: FontSize.s15),
    );
  }
}
