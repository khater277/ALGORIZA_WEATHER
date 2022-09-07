import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/core/utils/app_images.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/additional_info/additional_type.dart';
import 'package:flutter/material.dart';

class AdditionalInfoCard extends StatelessWidget {
  final AppCubit cubit;
  const AdditionalInfoCard({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdditionalType(
              name: AppStrings.uv,
              image: AppImages.uv,
              info: "${cubit.completeWeather!.current!.uvi}",
            ),
            AdditionalType(
              name: AppStrings.wind,
              image: AppImages.wind,
              info: "${cubit.completeWeather!.current!.wind_speed} km/h",
            ),
            AdditionalType(
              name: AppStrings.humidity,
              image: AppImages.humidity,
              info: "${cubit.completeWeather!.current!.humidity}%",
            ),
          ],
        ),
      ),
    );
  }
}
