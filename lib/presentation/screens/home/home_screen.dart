import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/city_temp_and_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/drawer_button.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/temp_deatils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingHorizontal.p14,
            ).add(EdgeInsets.only(top: PaddingVertical.p10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DrawerButton(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: PaddingHorizontal.p10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CityTempAndName(),
                      SizedBox(height: PaddingVertical.p20),
                      const TempDetails(),
                    ],
                  ),
                ),
                SizedBox(height: PaddingVertical.p30),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(cubit.allCities[0].city!),
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
