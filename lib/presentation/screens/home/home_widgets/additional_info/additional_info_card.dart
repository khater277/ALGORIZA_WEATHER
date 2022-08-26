import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/additional_info/additional_type.dart';
import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget {
  final AppCubit cubit;
  const AdditionalInfoCard({Key? key, required this.cubit}) : super(key: key);

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
          children: [
            AdditionalType(
              name: StringsManager.uv,
              image: ImagesManager.uv,
              info: "High",
            ),
            AdditionalType(
              name: StringsManager.wind,
              image: ImagesManager.wind,
              info: "${cubit.currentWeather!.wind!.speed} km/h",
            ),
            AdditionalType(
              name: StringsManager.humidity,
              image: ImagesManager.humidity,
              info: "${cubit.currentWeather!.main!.humidity}%",
            ),
          ],
        ),
      ),
    );
  }
}
