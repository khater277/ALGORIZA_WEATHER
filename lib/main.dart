import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/cubit/bloc_observer.dart';
import 'package:algoriza_weather/presentation/resources/theme_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

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
          create: (BuildContext context) => AppCubit()..handelAllCities(),
          child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, state) {},
            builder: (BuildContext context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeManager.lightTheme(),
                home: const HomeScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
