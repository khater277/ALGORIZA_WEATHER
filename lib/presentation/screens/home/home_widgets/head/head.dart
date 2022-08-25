import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/city_temp_and_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/temp_deatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

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
                const CityTempAndName(),
                SizedBox(height: AppHeight.h20),
                const TempDetails(),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
