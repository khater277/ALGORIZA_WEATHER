import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
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
          color: ColorManager.lightGrey,
        ),
        SizedBox(
          width: AppWidth.w1,
        ),
        Text(
          "$rain%",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.lightGrey,
                fontWeight: FontWeightManager.semiBold,
              ),
        ),
      ],
    );
  }
}
