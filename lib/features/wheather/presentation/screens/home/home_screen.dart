import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_fonts.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/connection_failed/connection_failed.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/drawer/drawer_view.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/additional_info/additional_info_card.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/head/head.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/hourly_temp_chart/hourly_temps.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/surise_sunset/sunrise_sunset_card.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/widgets/weakly_weather/weakly_weather.dart';
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
        return state is! GetCompleteWeatherLoadingState
            ? Scaffold(
                key: _scaffoldKey,
                appBar: AppBar(
                  toolbarHeight: AppHeight.h80,
                  centerTitle: false,
                  titleSpacing: 0,
                  title: Row(
                    children: [
                      Text(
                        "${cubit.favLocation!.name}",
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
                body: cubit.completeWeather == null
                    ? ConnectionFailed(cubit: cubit)
                    : CustomScrollView(
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
                                  const HourlyTemps(),
                                  SizedBox(height: AppHeight.h10),
                                  WeaklyWeather(cubit: cubit),
                                  SizedBox(height: AppHeight.h10),
                                  SunriseSunsetCard(
                                    cubit: cubit,
                                  ),
                                  SizedBox(height: AppHeight.h10),
                                  AdditionalInfoCard(
                                    cubit: cubit,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                drawer: DrawerView(state: state),
              )
            : const Scaffold(
                body: Center(
                    child: CircularProgressIndicator(
                  color: AppColors.white,
                )),
              );
      },
    );
  }
}
