import 'package:algoriza_weather/config/themes/app_theme.dart';
import 'package:algoriza_weather/core/widgets/offline.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/home/home_screen.dart';
import 'package:algoriza_weather/shared/saved_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:algoriza_weather/injector_container.dart' as di;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (BuildContext context) => di.sl<AppCubit>()
            ..handelAllCities()
            // ..getWeather()
            ..getCompleteWeather(),
          child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, state) {},
            builder: (BuildContext context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: isDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
                home: HomeScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
