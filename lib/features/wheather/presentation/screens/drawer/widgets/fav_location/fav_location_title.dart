import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/title_text.dart';
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
        const TitleText(text: AppStrings.favLocation),
        const Spacer(),
        Icon(
          Icons.info_outline_rounded,
          color: AppColors.lightGrey,
          size: AppSize.s20,
        )
      ],
    );
  }
}
