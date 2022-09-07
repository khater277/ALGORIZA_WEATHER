import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/drawer_bottom_row.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/fav_location/fav_location.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/other_locations/other_locations.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerView extends StatelessWidget {
  final AppStates state;
  const DrawerView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Drawer(
          backgroundColor: AppColors.darkBlue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w16).add(
              EdgeInsets.only(
                top: AppHeight.h50,
                bottom: AppHeight.h10,
              ),
            ),
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
                FavLocation(state: state),
                Container(
                  width: double.infinity,
                  height: AppHeight.h0_7,
                  color: AppColors.lightGrey,
                ),
                SizedBox(height: AppHeight.h20),
                OtherLocations(cubit: AppCubit.get(context)),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: AppHeight.h20),
                      Container(
                        width: double.infinity,
                        height: 0.35,
                        color: AppColors.lightGrey,
                      ),
                      SizedBox(height: AppHeight.h20),
                      const ThemeSwitcher(),
                      SizedBox(height: AppHeight.h20),
                      const DrawerBottomRow(
                        icon: Icons.info_outline_rounded,
                        text: AppStrings.report,
                      ),
                      SizedBox(height: AppHeight.h20),
                      const DrawerBottomRow(
                        icon: Icons.headphones_outlined,
                        text: AppStrings.contactUs,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
