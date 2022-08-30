import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/widgets/title_text.dart';
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
        const TitleText(text: StringsManager.otherLocations),
      ],
    );
  }
}
