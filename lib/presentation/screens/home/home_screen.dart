import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/additional_info/additional_info_card.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/head.dart';
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
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            toolbarHeight: AppHeight.h80,
          ),
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const Head(),
              // HomeAppBar(),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppWidth.w14,
                    vertical: AppHeight.h10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
              )
            ],
          ),
        );
      },
    );
  }
}
