import 'dart:math';

import 'package:flutter/material.dart';

class ColorManager {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color primary = Color(0xFFED9728);
  static const Color grey = Color(0xFF737477); // for text field hint
  static const Color lightGrey = Color(0xFF9E9E9E); // for details
  static const Color darkGrey = Color(0xFF525252); // for on boarding text
  static const Color semiDarkGrey = Color(0xFF304654); // for text field border
  static const Color lightBlack = Color(0xFF707070); // for settings text

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
