import 'dart:math';

import 'package:flutter/material.dart';

class ColorManager {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color blue = Color(0xFF7cb2f2);
  static const Color grey = Color(0xFF727272); // for text field hint
  static const Color lightGrey = Color(0xFFd8d9dd); // for drawer text
  static const Color darkGrey = Color(0xFF171717); // for dark card background
  static const Color darkBlue = Color(0xFF2d3741); // for drawer background
  static const Color lightBlue = Color(0xFF8cbaec); // for light card background
  static const Color button = Color(0xFF4f5762); // for button background

  static MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}
