import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/icons_broken.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/shared/widgets/flush_bar.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class ConnectionFailed extends StatelessWidget {
  const ConnectionFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            AppCubit.get(context).getWeather();
          },
          child: Icon(
            Icons.refresh_outlined,
            size: AppSize.s150,
            color: ColorManager.lightGrey,
          ),
        ),
        Text(
          StringsManager.connectionFailed,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: FontSize.s14,
              ),
        ),
      ],
    ));
  }
}
