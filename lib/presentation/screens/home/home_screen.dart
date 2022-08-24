import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/icons_broken.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/city_temp_and_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/drawer_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PaddingHorizontal.p14,
        ).add(EdgeInsets.only(top: PaddingVertical.p10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DrawerButton(),
            CityTempAndName(),
          ],
        ),
      ),
    );
  }
}
