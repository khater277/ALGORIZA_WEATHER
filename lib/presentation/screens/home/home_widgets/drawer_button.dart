import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          top: PaddingVertical.p45,
          bottom: PaddingVertical.p40,
        ),
        child: const Icon(Icons.menu),
      ),
    );
  }
}
