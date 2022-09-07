import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class SunAction extends StatelessWidget {
  final String title;
  final String time;
  final String image;
  const SunAction({
    Key? key,
    required this.title,
    required this.time,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: FontSize.s14,
                )),
        SizedBox(
          height: AppHeight.h5,
        ),
        Text(
          time,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: AppHeight.h8,
        ),
        Image.asset(
          image,
          width: double.infinity,
          height: AppHeight.h100,
        )
      ],
    );
  }
}
