import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/head/city_temp_and_name.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/head/temp_deatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Head extends StatelessWidget {
  final AppCubit cubit;
  const Head({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: false,
      floating: false,
      automaticallyImplyLeading: false,
      expandedHeight: 160.h,
      flexibleSpace: FlexibleSpaceBar(
          background: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w20)
            .add(EdgeInsets.only(top: AppHeight.h10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CityTempAndName(cubit: cubit),
                SizedBox(height: AppHeight.h20),
                TempDetails(
                  cubit: cubit,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
