import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class AdditionalType extends StatelessWidget {
  final String name;
  final String image;
  final String info;
  const AdditionalType(
      {Key? key, required this.name, required this.image, required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: AppWidth.w40,
          height: AppHeight.h40,
        ),
        SizedBox(height: AppHeight.h2),
        Text(
          name,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: FontSize.s14),
        ),
        SizedBox(height: AppHeight.h2),
        Text(
          info,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: ColorManager.lightGrey),
        ),
      ],
    );
  }
}
