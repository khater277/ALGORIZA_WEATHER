// ignore_for_file: must_be_immutable

import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class DefaultTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final double hintSize;
  final double height;
  final double rounded;
  final Color focusBorder;
  final Color border;
  final TextInputType inputType;
  double? fontSize;
  Widget? suffix;
  Widget? prefix;

  double? letterSpacing;

  Color? cursorColor;
  VoidCallback? onTap;
  var onSubmitted;
  var onChanged;

  DefaultTextFiled({
    Key? key,
    required this.controller,
    required this.hint,
    required this.hintSize,
    required this.height,
    required this.focusBorder,
    required this.border,
    required this.inputType,
    this.fontSize,
    this.suffix,
    this.prefix,
    this.letterSpacing,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.cursorColor,
    required this.rounded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: cursorColor ?? focusBorder,
      controller: controller,
      keyboardType: inputType,
      onSubmitted: onSubmitted,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: fontSize ?? FontSize.s14,
            letterSpacing: letterSpacing ?? 0,
          ),
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: FontSize.s12,
            ),
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: AppWidth.w4),
        suffixIcon: suffix,
        prefixIcon: prefix,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(color: border)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(color: focusBorder)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(color: border)),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(rounded),
          borderSide: BorderSide(color: focusBorder),
        ),
      ),
    );
  }
}
