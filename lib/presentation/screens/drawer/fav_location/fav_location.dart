import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/fav_location_temp.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/fav_location_title.dart';
import 'package:flutter/material.dart';

class FavLocation extends StatelessWidget {
  const FavLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavLocationTitile(),
        SizedBox(height: AppHeight.h25),
        const FavLocationTemp(),
        SizedBox(height: AppHeight.h20),
      ],
    );
  }
}
