import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/title_text.dart';
import 'package:flutter/material.dart';

class OtherLocationTitle extends StatelessWidget {
  const OtherLocationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.add_location_alt_outlined,
          size: AppSize.s20,
        ),
        SizedBox(width: AppWidth.w20),
        const TitleText(text: AppStrings.otherLocations)
      ],
    );
  }
}
