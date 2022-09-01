import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
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
              color: ColorManager.lightGrey,
            ),
      );
    } else {
      return Icon(
        Icons.refresh,
        color: ColorManager.lightGrey,
        size: AppSize.s20,
      );
    }
  }
}
