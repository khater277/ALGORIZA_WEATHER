import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:algoriza_weather/core/utils/font_styles.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      /// colors
      primaryColor: AppColors.blue,
      primarySwatch: AppColors.generateMaterialColor(AppColors.blue),
      scaffoldBackgroundColor: AppColors.blue,
      splashColor: AppColors.lightGrey,

      ///app bar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: AppColors.blue,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: AppColors.white,
        ),
        titleTextStyle: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s16),
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.button,
        textStyle: getMediumStyle(
          fontColor: AppColors.lightGrey,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20)),
        minimumSize: Size(double.infinity, 40.h),
      )),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: AppColors.lightBlue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
      ),

      /// text
      textTheme: TextTheme(
        titleLarge:
            getLightStyle(fontColor: AppColors.white, fontSize: FontSize.s55),
        titleMedium:
            getMediumStyle(fontColor: AppColors.white, fontSize: FontSize.s24),
        titleSmall:
            getBoldStyle(fontColor: AppColors.white, fontSize: FontSize.s16),
        bodyLarge: getMediumStyle(
          fontColor: AppColors.lightGrey,
          fontSize: FontSize.s13,
        ),
        bodyMedium: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s12),
        bodySmall:
            getRegularStyle(fontColor: AppColors.white, fontSize: FontSize.s12),
        displaySmall: getMediumStyle(
          fontColor: AppColors.white,
          fontSize: FontSize.s11,
        ),
        displayMedium: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s14),
      ),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(
          fontColor: AppColors.grey,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        errorStyle: getRegularStyle(
            fontColor: Colors.red.withOpacity(0.6), fontSize: FontSize.s12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
      ),

      /// icon
      iconTheme: IconThemeData(color: AppColors.white, size: AppSize.s24),
      // iconTheme: const IconThemeData(color: AppColors.primary)
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      /// colors
      primaryColor: AppColors.blue,
      primarySwatch: AppColors.generateMaterialColor(AppColors.blue),
      scaffoldBackgroundColor: AppColors.black,
      splashColor: AppColors.lightGrey,

      ///app bar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: AppColors.black,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          // statusBarColor: AppColors.white,
        ),
        titleTextStyle: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s16),
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: AppColors.button,
        textStyle: getMediumStyle(
          fontColor: AppColors.lightGrey,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20)),
        minimumSize: Size(double.infinity, 40.h),
      )),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: AppColors.darkGrey,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
      ),

      /// text
      textTheme: TextTheme(
        titleLarge:
            getLightStyle(fontColor: AppColors.white, fontSize: FontSize.s55),
        titleMedium:
            getMediumStyle(fontColor: AppColors.white, fontSize: FontSize.s24),
        titleSmall:
            getBoldStyle(fontColor: AppColors.white, fontSize: FontSize.s16),
        bodyLarge: getMediumStyle(
          fontColor: AppColors.lightGrey,
          fontSize: FontSize.s13,
        ),
        bodyMedium: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s12),
        bodySmall:
            getRegularStyle(fontColor: AppColors.white, fontSize: FontSize.s12),
        displaySmall: getMediumStyle(
          fontColor: AppColors.white,
          fontSize: FontSize.s11,
        ),
        displayMedium: getSemiBoldStyle(
            fontColor: AppColors.white, fontSize: FontSize.s14),
      ),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(
          fontColor: AppColors.grey,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
        errorStyle: getRegularStyle(
            fontColor: Colors.red.withOpacity(0.6), fontSize: FontSize.s12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.sp),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
            )),
      ),

      /// icon
      iconTheme: IconThemeData(color: AppColors.white, size: AppSize.s24),
      // iconTheme: const IconThemeData(color: AppColors.primary)
    );
  }
}
