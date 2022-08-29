import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/manage_locations_button.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/other_location_info.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/other_location_title.dart';
import 'package:flutter/material.dart';

class OtherLocations extends StatelessWidget {
  const OtherLocations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const OtherLocationTitle(),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const OtherLocationInfo(),
              separatorBuilder: (context, index) =>
                  SizedBox(height: AppHeight.h20),
              itemCount: 7,
            ),
          ),
          SizedBox(height: AppHeight.h20),
          ManageLocationButton(),
        ],
      ),
    );
  }
}
