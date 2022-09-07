import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class ClearSearch extends StatelessWidget {
  final TextEditingController controller;
  const ClearSearch({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (BuildContext context, TextEditingValue value, Widget? child) {
        if (value.text.isNotEmpty) {
          return IconButton(
            onPressed: () {
              AppCubit.get(context).clearSearch();
              controller.clear();
            },
            icon: Icon(
              Icons.close,
              color: Colors.red.withOpacity(0.7),
              size: AppSize.s20,
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
