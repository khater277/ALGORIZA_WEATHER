import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/drawer_bottom_row.dart';
import 'package:flutter/material.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DrawerBottomRow(
          icon: Icons.brightness_3,
          text: StringsManager.darkMode,
          isThemeSwitcher: true,
        ),
        const Spacer(),
        Switch(
            value: true,
            activeTrackColor: ColorManager.grey,
            inactiveTrackColor: Colors.grey.withOpacity(0.5),
            activeColor: Colors.yellow,
            inactiveThumbColor: Colors.grey,
            onChanged: (value) {
              // cubit.changeTheme();
            }),
      ],
    );
  }
}
