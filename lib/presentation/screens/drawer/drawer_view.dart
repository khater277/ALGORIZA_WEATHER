import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/strings_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/fav_location.dart';
import 'package:algoriza_weather/presentation/screens/drawer/other_locations/other_locations.dart';
import 'package:algoriza_weather/presentation/screens/drawer/drawer_bottom_row.dart';
import 'package:algoriza_weather/presentation/screens/drawer/theme_switcher.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.darkBlue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppHeight.h50, horizontal: AppWidth.w16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Icon(
                Icons.settings_outlined,
                size: AppSize.s20,
              ),
            ),
            SizedBox(height: AppHeight.h25),
            const FavLocation(),
            Container(
              width: double.infinity,
              height: AppHeight.h0_7,
              color: ColorManager.lightGrey,
            ),
            SizedBox(height: AppHeight.h20),
            const OtherLocations(),
            SizedBox(height: AppHeight.h20),
            Container(
              width: double.infinity,
              height: 0.35,
              color: ColorManager.lightGrey,
            ),
            SizedBox(height: AppHeight.h20),
            const ThemeSwitcher(),
            SizedBox(height: AppHeight.h20),
            const DrawerBottomRow(
              icon: Icons.info_outline_rounded,
              text: StringsManager.report,
            ),
            SizedBox(height: AppHeight.h20),
            const DrawerBottomRow(
              icon: Icons.headphones_outlined,
              text: StringsManager.contactUs,
            ),
          ],
        ),
      ),
    );
  }
}
