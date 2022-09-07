import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/other_locations/manage_locations_button.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/other_locations/other_location_info.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/other_locations/other_location_title.dart';
import 'package:flutter/material.dart';

class OtherLocations extends StatelessWidget {
  final AppCubit cubit;
  const OtherLocations({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const OtherLocationTitle(),
        if (cubit.otherLocations!.isNotEmpty)
         SizedBox(height: AppHeight.h10),
        LimitedBox(
          maxHeight: AppHeight.h100,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => OtherLocationInfo(
              name: cubit.otherLocations![index].name!,
              temp: cubit.otherLocations![index].temp,
            ),
            separatorBuilder: (context, index) =>
                SizedBox(height: AppHeight.h20),
            itemCount: cubit.otherLocations!.length,
          ),
        ),
        SizedBox(height: AppHeight.h20),
        const ManageLocationButton(),
      ],
    );
  }
}
