import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/font_styles.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';

class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      /// colors
      primaryColor: ColorManager.blue,
      primarySwatch: ColorManager.generateMaterialColor(ColorManager.blue),
      scaffoldBackgroundColor: ColorManager.blue,
      splashColor: ColorManager.lightGrey,

      ///app bar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: ColorManager.blue,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: ColorManager.white,
        ),
        titleTextStyle: getSemiBoldStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s16),
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: ColorManager.button,
        textStyle: getMediumStyle(
          fontColor: ColorManager.lightGrey,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20)),
        minimumSize: Size(double.infinity, 40.h),
      )),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: ColorManager.lightBlue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
      ),

      /// text
      textTheme: TextTheme(
        titleLarge: getLightStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s55),
        titleMedium: getMediumStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s24),
        titleSmall:
            getBoldStyle(fontColor: ColorManager.white, fontSize: FontSize.s16),
        bodyLarge: getMediumStyle(
          fontColor: ColorManager.lightGrey,
          fontSize: FontSize.s13,
        ),
        bodyMedium: getSemiBoldStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s12),
        bodySmall: getRegularStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s12),
        displaySmall: getMediumStyle(
          fontColor: ColorManager.white,
          fontSize: FontSize.s11,
        ),
        displayMedium: getSemiBoldStyle(
            fontColor: ColorManager.white, fontSize: FontSize.s14),
      ),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(
          fontColor: ColorManager.grey,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        errorStyle: getRegularStyle(
            fontColor: Colors.red.withOpacity(0.6), fontSize: FontSize.s12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.3),
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.3),
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: ColorManager.blue,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: ColorManager.blue,
            )),
      ),

      /// icon
      iconTheme: IconThemeData(color: ColorManager.white, size: AppSize.s24),
      // iconTheme: const IconThemeData(color: ColorManager.primary)
    );
  }
}
