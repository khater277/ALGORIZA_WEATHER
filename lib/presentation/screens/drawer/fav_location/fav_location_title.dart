import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/title_text.dart';
import 'package:flutter/material.dart';

class FavLocationTitile extends StatelessWidget {
  const FavLocationTitile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star),
        SizedBox(
          width: AppWidth.w10,
        ),
        const TitleText(text: StringsManager.favLocation),
        const Spacer(),
        Icon(
          Icons.info_outline_rounded,
          color: ColorManager.lightGrey,
          size: AppSize.s20,
        )
      ],
    );
  }
}
