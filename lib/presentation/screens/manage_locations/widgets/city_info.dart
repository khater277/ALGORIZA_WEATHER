import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/icons_broken.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/body_text.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class CityInfo extends StatelessWidget {
  final CityHive cityHive;
  final AppCubit cubit;
  final int index;
  const CityInfo(
      {Key? key,
      required this.cityHive,
      required this.cubit,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CityHive? test = cubit.otherLocations
        .firstWhereOrNull((element) => element.cityId == cityHive.cityId);
    bool condition = test != null ? true : false;
    return Row(
      children: [
        Expanded(child: BodyText(text: "${cityHive.name}", isSearch: true)),
        GestureDetector(
          onTap: () {
            if (condition) {
              cubit.removeLocation(index: index);
            } else {
              cubit.addNewLocation(cityHive: cityHive, index: index);
            }
          },
          child: Icon(
            IconBroken.Shield_Done,
            size: AppSize.s20,
            color: condition ? ColorManager.green : ColorManager.grey,
          ),
        ),
      ],
    );
  }
}
