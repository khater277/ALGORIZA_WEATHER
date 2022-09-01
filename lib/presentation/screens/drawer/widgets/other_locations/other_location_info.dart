import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/widgets/body_text.dart';
import 'package:algoriza_weather/presentation/screens/drawer/widgets/drawer_temp.dart';
import 'package:flutter/material.dart';

class OtherLocationInfo extends StatelessWidget {
  final String name;
  final int? temp;
  const OtherLocationInfo({Key? key, required this.name, required this.temp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: AppWidth.w40),
        Expanded(child: BodyText(text: name)),
        Image.asset(
          ImagesManager.sun,
          width: AppSize.s20,
          height: AppSize.s20,
        ),
        SizedBox(
          width: AppWidth.w5,
        ),
        DrawerTemp(temp: temp)
      ],
    );
  }
}
