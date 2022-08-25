import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/additional_info/additional_info_card.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/city_temp_and_name.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/drawer_button.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/temp_deatils.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/hourly_temp_chart/hourly_temps.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/surise_sunset/sunrise_sunset_card.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/weakly_weather.dart';
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
              horizontal: AppWidth.w14,
              vertical: AppHeight.h10,
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DrawerButton(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CityTempAndName(),
                        SizedBox(height: AppHeight.h20),
                        const TempDetails(),
                      ],
                    ),
                  ),
                  SizedBox(height: AppHeight.h30),
                  const HourlyTemps(),
                  SizedBox(height: AppHeight.h10),
                  const WeaklyWeather(),
                  SizedBox(height: AppHeight.h10),
                  const SunriseSunsetCard(),
                  SizedBox(height: AppHeight.h10),
                  const AdditionalInfoCard()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
