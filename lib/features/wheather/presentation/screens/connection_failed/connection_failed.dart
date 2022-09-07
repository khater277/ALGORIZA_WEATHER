import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:flutter/material.dart';

class ConnectionFailed extends StatelessWidget {
  final AppCubit cubit;
  const ConnectionFailed({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            cubit.getCompleteWeather();
          },
          child: Icon(
            Icons.refresh_outlined,
            size: AppSize.s150,
            color: AppColors.lightGrey,
          ),
        ),
        Text(
          AppStrings.connectionFailed,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: FontSize.s14,
              ),
        ),
      ],
    ));
  }
}
