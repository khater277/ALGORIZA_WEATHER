import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/widgets/body_text.dart';
import 'package:flutter/material.dart';

class DrawerBottomRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isThemeSwitcher;
  const DrawerBottomRow(
      {Key? key,
      required this.icon,
      required this.text,
      this.isThemeSwitcher = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RotatedBox(
          quarterTurns: isThemeSwitcher ? 2 : 0,
          child: Icon(
            icon,
            color: ColorManager.lightGrey,
            size: AppSize.s20,
          ),
        ),
        SizedBox(width: AppWidth.w20),
        BodyText(text: text)
      ],
    );
  }
}
