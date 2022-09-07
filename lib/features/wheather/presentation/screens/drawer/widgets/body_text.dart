import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final bool isSearch;
  const BodyText({Key? key, required this.text, this.isSearch = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSize.s14,
            color: isSearch ? AppColors.white : null,
          ),
    );
  }
}
