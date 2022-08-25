import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class RainPossibility extends StatelessWidget {
  const RainPossibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.water_drop,
          size: AppSize.s12,
          color: ColorManager.lightGrey,
        ),
        SizedBox(
          width: AppWidth.w1,
        ),
        Text(
          "2%",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.lightGrey,
                fontWeight: FontWeightManager.semiBold,
              ),
        ),
      ],
    );
  }
}
