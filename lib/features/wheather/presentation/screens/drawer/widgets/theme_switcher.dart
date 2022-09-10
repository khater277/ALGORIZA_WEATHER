import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/drawer_bottom_row.dart';
import 'package:algoriza_weather/core/utils/saved_data.dart';
import 'package:flutter/material.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool dark = isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DrawerBottomRow(
          icon: Icons.brightness_3,
          text: AppStrings.darkMode,
          isThemeSwitcher: true,
        ),
        const Spacer(),
        Switch(
            value: dark,
            activeTrackColor: AppColors.grey,
            inactiveTrackColor: Colors.grey.withOpacity(0.5),
            activeColor: AppColors.yellow,
            inactiveThumbColor: Colors.grey,
            onChanged: (value) {
              setState(() {
                dark = !dark;
              });
              AppCubit.get(context).changeTheme();
            }),
      ],
    );
  }
}
