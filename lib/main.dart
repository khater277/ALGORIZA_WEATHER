import 'package:algoriza_weather/app.dart';
import 'package:algoriza_weather/core/api/dio_helper.dart';
import 'package:algoriza_weather/core/hive/hive_helper.dart';
import 'package:algoriza_weather/cubit/bloc_observer.dart';
import 'package:algoriza_weather/injector_container.dart' as di;
import 'package:algoriza_weather/shared/saved_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding();
  await GetStorage.init();
  await HiveHelper.init();
  DioHelper.init();
  isDark = GetStorage().read('isDark') ?? false;
  await di.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
