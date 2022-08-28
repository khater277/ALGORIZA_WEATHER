import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/assets_manager.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/fav_location/fav_location_title.dart';
import 'package:flutter/material.dart';

class FavLocation extends StatelessWidget {
  final AppCubit cubit;
  const FavLocation({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavLocationTitile(),
        SizedBox(height: AppHeight.h25),
        DropdownButtonFormField(
          isExpanded: true,
          decoration: InputDecoration(
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagesManager.sun,
                  width: AppSize.s20,
                  height: AppSize.s20,
                ),
                SizedBox(
                  width: AppWidth.w5,
                ),
                Text(
                  "${cubit.completeWeather!.current!.temp}°",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeightManager.medium,
                        fontSize: FontSize.s12,
                        color: ColorManager.lightGrey,
                      ),
                ),
              ],
            ),
          ),
          dropdownColor: ColorManager.button,
          value: cubit.currentLocation,
          onChanged: (String? newValue) {
            cubit.changeFavLocation(location: newValue!);
          },
          items: cubit.allCitiesNames
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeightManager.medium,
                    ),
              ),
            );
          }).toList(),
        ),
        // const FavLocationTemp(),
        SizedBox(height: AppHeight.h20),
      ],
    );
  }
}
