import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/icons_broken.dart';
import 'package:algoriza_weather/presentation/resources/navigation_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/manage_locations/widgets/clear_search.dart';
import 'package:algoriza_weather/services/hive/hive_helper.dart';
import 'package:algoriza_weather/shared/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  final AppCubit cubit;
  final TextEditingController controller;

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
            AppCubit.get(context).clearSearch();
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
            fontSize: 12.sp,
            hint: "search...",
            hintSize: 12.sp,
            height: 5.h,
            prefix: Icon(
              IconBroken.Search,
              size: 20.sp,
              color: Colors.white.withOpacity(0.7),
            ),
            suffix: ClearSearch(controller: controller),
            focusBorder: ColorManager.white.withOpacity(0.4),
            border: ColorManager.white.withOpacity(0.4),
            inputType: TextInputType.text,
            rounded: 20.sp,
            cursorColor: ColorManager.white.withOpacity(0.4),
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
