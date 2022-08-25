import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/additional_info/additional_type.dart';
import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget {
  const AdditionalInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppHeight.h15,
          // horizontal: AppWidth.w15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            AdditionalType(
              name: StringsManager.uv,
              image: ImagesManager.uv,
              info: "High",
            ),
            AdditionalType(
              name: StringsManager.wind,
              image: ImagesManager.wind,
              info: "23 km/h",
            ),
            AdditionalType(
              name: StringsManager.humidity,
              image: ImagesManager.humidity,
              info: "31%",
            ),
          ],
        ),
      ),
    );
  }
}
