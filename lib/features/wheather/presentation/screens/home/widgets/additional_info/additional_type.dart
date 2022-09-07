import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
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
              .copyWith(color: AppColors.lightGrey),
        ),
      ],
    );
  }
}
