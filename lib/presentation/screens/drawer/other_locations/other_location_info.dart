import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/body_text.dart';
import 'package:flutter/material.dart';

class OtherLocationInfo extends StatelessWidget {
  const OtherLocationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: AppWidth.w40),
        const BodyText(text: "Saint Cathrine"),
        const Spacer(),
        Image.asset(
          ImagesManager.sun,
          width: AppSize.s20,
          height: AppSize.s20,
        ),
        SizedBox(
          width: AppWidth.w5,
        ),
        Text(
          "32°",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeightManager.medium,
                fontSize: FontSize.s12,
                color: ColorManager.lightGrey,
              ),
        )
      ],
    );
  }
}
