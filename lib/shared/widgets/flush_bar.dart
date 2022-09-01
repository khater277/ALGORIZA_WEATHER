import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/icons_broken.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

showFlushBar({
  required String title,
  required String message,
  required context,
}) {
  return Flushbar(
    backgroundColor: ColorManager.white,
    titleText: Text(
      title,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: ColorManager.black,
            fontSize: FontSize.s14,
          ),
    ),
    messageText: Text(
      message,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: ColorManager.black,
            fontSize: FontSize.s12,
          ),
    ),
    titleColor: ColorManager.black,
    messageColor: ColorManager.black,
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    duration: const Duration(seconds: 4),
    icon: const Icon(IconBroken.Danger, color: ColorManager.black),
    margin:
        EdgeInsets.symmetric(vertical: AppHeight.h2, horizontal: AppWidth.w3),
    borderRadius: BorderRadius.circular(AppSize.s8),
  )..show(context);
}
