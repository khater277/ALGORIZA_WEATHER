import 'package:algoriza_weather/config/themes/navigation.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/manage_locations/manage_locations_screen.dart';
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
        AppStrings.manageLocations,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontSize: FontSize.s14),
      ),
    );
  }
}
