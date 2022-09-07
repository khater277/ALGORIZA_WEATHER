import 'package:algoriza_weather/core/utils/app_colors.dart';
import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/constatnts.dart';
import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/manage_locations/widgets/city_info.dart';
import 'package:algoriza_weather/features/wheather/presentation/screens/manage_locations/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageLocationsScreen extends StatefulWidget {
  const ManageLocationsScreen({Key? key}) : super(key: key);

  @override
  State<ManageLocationsScreen> createState() => _ManageLocationsScreenState();
}

class _ManageLocationsScreenState extends State<ManageLocationsScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is GetCurrentWeatherErrorState) {
          Constants.showFlushBar(
            title: AppStrings.connectionError,
            message: AppStrings.connectionErrorMessage,
            context: context,
          );
        }
      },
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: AppColors.darkBlue,
            body: Padding(
              padding: EdgeInsets.symmetric(
                vertical: AppHeight.h20,
                horizontal: AppWidth.w10,
              ),
              child: Column(
                children: [
                  SearchTextField(controller: _controller, cubit: cubit),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppHeight.h20,
                        horizontal: AppWidth.w20,
                      ).add(EdgeInsets.only(left: AppWidth.w20)),
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return
                              // Text("${cubit.searchCities[index]}");
                              CityInfo(
                            city: cubit.searchCities[index],
                            index: index,
                            state: state,
                            cubit: cubit,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: AppHeight.h20),
                        itemCount: cubit.searchCities.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
