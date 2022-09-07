import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class DrawerTemp extends StatelessWidget {
  final int? temp;
  const DrawerTemp({Key? key, this.temp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (temp != null) {
      return Text(
        "$temp°",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeightManager.medium,
              fontSize: FontSize.s12,
              color: AppColors.lightGrey,
            ),
      );
    } else {
      return Icon(
        Icons.refresh,
        color: AppColors.lightGrey,
        size: AppSize.s20,
      );
    }
  }
}
