import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/navigation_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/screens/manage_locations/manage_locations_screen.dart';
import 'package:flutter/material.dart';

class ManageLocationButton extends StatelessWidget {
  const ManageLocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Go.to(context: context, screen: const ManageLocationsScreen());
      },
      child: Text(
        StringsManager.manageLocations,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontSize: FontSize.s14),
      ),
    );
  }
}
