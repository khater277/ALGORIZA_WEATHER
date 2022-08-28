import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/fonts_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/drawer/drawer_view.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/additional_info/additional_info_card.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/head/head.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/hourly_temp_chart/hourly_temps.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/surise_sunset/sunrise_sunset_card.dart';
import 'package:algoriza_weather/presentation/screens/home/home_widgets/weakly_weather/weakly_weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return state is! AppLoadingState
            ? Scaffold(
                key: _scaffoldKey,
                appBar: AppBar(
                  toolbarHeight: AppHeight.h80,
                  centerTitle: false,
                  titleSpacing: 0,
                  title: Row(
                    children: [
                      Text(
                        "${cubit.allCities[0].city}",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: FontSize.s18,
                                ),
                      ),
                      SizedBox(width: AppWidth.w2),
                      Icon(
                        Icons.location_on,
                        size: AppSize.s12,
                      )
                    ],
                  ),
                ),
                body: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    Head(cubit: cubit),
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
                            HourlyTemps(cubit: cubit),
                            SizedBox(height: AppHeight.h10),
                            WeaklyWeather(cubit: cubit),
                            SizedBox(height: AppHeight.h10),
                            SunriseSunsetCard(cubit: cubit),
                            SizedBox(height: AppHeight.h10),
                            AdditionalInfoCard(cubit: cubit)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                drawer: const DrawerView(),
              )
            : const Scaffold(
                body: Center(
                    child: CircularProgressIndicator(
                  color: ColorManager.white,
                )),
              );
      },
    );
  }
}
