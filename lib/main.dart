import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/cubit/bloc_observer.dart';
import 'package:algoriza_weather/presentation/resources/theme_manager.dart';
import 'package:algoriza_weather/presentation/screens/home/home_screen.dart';
import 'package:algoriza_weather/services/api/dio_helper.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';
import 'package:algoriza_weather/services/hive/hive_helper.dart';
import 'package:algoriza_weather/services/hive/keys.dart';
import 'package:algoriza_weather/shared/saved_data.dart';
import 'package:algoriza_weather/shared/widgets/offline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding();
  await GetStorage.init();

  DioHelper.init();

  await Hive.initFlutter();
  Hive.registerAdapter(CityHiveAdapter());

  HiveHelper.favLocationBox = await Hive.openBox(HiveKeys.favLocation);
  HiveHelper.otherLocationsBox = await Hive.openBox(HiveKeys.otherLocations);

  HiveHelper.init();
  isDark = GetStorage().read('isDark') ?? false;
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
          create: (BuildContext context) => AppCubit()
            ..handelAllCities()
            ..getWeather(),
          child: BlocConsumer<AppCubit, AppStates>(
            listener: (BuildContext context, state) {},
            builder: (BuildContext context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: isDark
                    ? ThemeManager.darkTheme()
                    : ThemeManager.lightTheme(),
                home: const OfflineWidget(onlineWidget: HomeScreen()),
              );
            },
          ),
        );
      },
    );
  }
}
