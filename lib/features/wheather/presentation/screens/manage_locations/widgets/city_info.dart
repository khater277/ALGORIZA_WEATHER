import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/core/utils/icons_broken.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/features/wheather/data/models/city/city.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/widgets/body_text.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class CityInfo extends StatefulWidget {
  final CityModel city;
  final int index;
  final AppStates state;
  final AppCubit cubit;
  const CityInfo(
      {Key? key,
      required this.city,
      required this.index,
      required this.state,
      required this.cubit})
      : super(key: key);

  @override
  State<CityInfo> createState() => _CityInfoState();
}

class _CityInfoState extends State<CityInfo> {
  @override
  Widget build(BuildContext context) {
    CityModel? finalCity = widget.cubit.otherLocations!
        .firstWhereOrNull((element) => element.cityId == widget.city.cityId);
    bool condition = finalCity != null ? true : false;
    return Row(
      children: [
        Expanded(child: BodyText(text: "${widget.city.name}", isSearch: true)),
        GestureDetector(
          onTap: () {
            if (condition) {
              widget.cubit.removeOtherLocation(city: widget.city);
            } else {
              widget.cubit.addOtherLocation(city: widget.city);
            }
          },
          child: widget.state is GetCurrentWeatherLoadingState &&
                  widget.cubit.loadingCitiesIDs.contains(widget.city.cityId!)
              ? SizedBox(
                  width: AppWidth.w18,
                  height: AppHeight.h18,
                  child: const CircularProgressIndicator(
                    strokeWidth: 1.5,
                    color: AppColors.yellow,
                  ),
                )
              : Icon(
                  IconBroken.Shield_Done,
                  size: AppSize.s20,
                  color: condition ? AppColors.green : AppColors.grey,
                ),
        ),
      ],
    );
  }
}
