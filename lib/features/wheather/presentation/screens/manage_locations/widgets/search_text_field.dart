import 'package:algoriza_weather/config/themes/navigation.dart';
import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/widgets/text_field.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/core/utils/icons_broken.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/manage_locations/widgets/clear_search.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final AppCubit cubit;
  const SearchTextField(
      {Key? key, required this.controller, required this.cubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // HiveHelper.otherLocationsBox!.deleteFromDisk();
            Go.back(context: context);
            cubit.clearSearch();
          },
          child: Padding(
            padding: EdgeInsets.only(right: AppWidth.w10),
            child: Icon(
              IconBroken.Arrow___Left_2,
              size: AppSize.s22,
            ),
          ),
        ),
        Expanded(
          child: DefaultTextFiled(
            controller: controller,
            fontSize: AppSize.s12,
            hint: AppStrings.search,
            hintSize: AppSize.s12,
            height: AppHeight.h5,
            prefix: Icon(
              IconBroken.Search,
              size: AppSize.s20,
              color: Colors.white.withOpacity(0.7),
            ),
            suffix: ClearSearch(controller: controller),
            focusBorder: AppColors.white.withOpacity(0.4),
            border: AppColors.white.withOpacity(0.4),
            inputType: TextInputType.text,
            rounded: AppSize.s20,
            cursorColor: AppColors.white.withOpacity(0.4),
            onChanged: (String name) {
              cubit.citySearch(name: name);
            },
          ),
        ),
        // SizedBox(width: AppWidth.w10),
      ],
    );
  }
}
