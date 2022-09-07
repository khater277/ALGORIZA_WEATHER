import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class RainPossibility extends StatelessWidget {
  final double rain;
  const RainPossibility({Key? key, required this.rain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.water_drop,
          size: AppSize.s12,
          color: AppColors.lightGrey,
        ),
        SizedBox(
          width: AppWidth.w1,
        ),
        Text(
          "${rain.round()}%",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.lightGrey,
                fontWeight: FontWeightManager.semiBold,
              ),
        ),
      ],
    );
  }
}
