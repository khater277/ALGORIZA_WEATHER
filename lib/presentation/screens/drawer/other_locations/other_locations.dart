import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/manage_locations_button.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/other_location_info.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/other_location_title.dart';
import 'package:flutter/material.dart';

class OtherLocations extends StatelessWidget {
  const OtherLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OtherLocationTitle(),
        SizedBox(height: AppHeight.h20),
        const OtherLocationInfo(),
        SizedBox(height: AppHeight.h20),
        const ManageLocationButton(),
      ],
    );
  }
}
