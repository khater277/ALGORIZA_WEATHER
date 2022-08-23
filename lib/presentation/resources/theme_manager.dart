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
      primaryColor: ColorManager.primary,
      primarySwatch: ColorManager.generateMaterialColor(ColorManager.primary),
      scaffoldBackgroundColor: ColorManager.white,
      splashColor: ColorManager.lightGrey,

      ///app bar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: ColorManager.primary,
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
        primary: ColorManager.primary,
        textStyle: getRegularStyle(
          fontColor: ColorManager.white,
          fontSize: FontSize.s16,
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.sp)),
        minimumSize: Size(double.infinity, 40.76.h),
      )),

      /// text
      textTheme: TextTheme(
        titleLarge: getSemiBoldStyle(
            fontColor: ColorManager.primary, fontSize: FontSize.s18),
        titleMedium: getSemiBoldStyle(
            fontColor: ColorManager.darkGrey, fontSize: FontSize.s16),
        titleSmall: getBoldStyle(
            fontColor: ColorManager.primary, fontSize: FontSize.s12),
        bodyLarge: getMediumStyle(
          fontColor: ColorManager.lightGrey,
        ),
        bodyMedium: getRegularStyle(
          fontColor: ColorManager.darkGrey,
        ),
        bodySmall: getRegularStyle(
            fontColor: ColorManager.darkGrey, fontSize: FontSize.s12),
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
              color: ColorManager.semiDarkGrey,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: ColorManager.primary,
            )),
      ),

      /// icon
      iconTheme: IconThemeData(color: ColorManager.white, size: AppSize.s22),
      // iconTheme: const IconThemeData(color: ColorManager.primary)
    );
  }
}
