import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  const BodyText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSize.s14,
          ),
    );
  }
}
