import 'package:algoriza_weather/cubit/app_cubit.dart';
import 'package:algoriza_weather/cubit/app_states.dart';
import 'package:algoriza_weather/presentation/resources/colors_manager.dart';
import 'package:algoriza_weather/presentation/resources/values_manager.dart';
import 'package:algoriza_weather/presentation/screens/manage_locations/widgets/city_info.dart';
import 'package:algoriza_weather/presentation/screens/manage_locations/widgets/search_text_field.dart';
import 'package:algoriza_weather/services/hive/city/city_hive.dart';
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
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: ColorManager.darkBlue,
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
                          CityHive cityHive = CityHive(
                            latitude: cubit.searchCities[index].latitude,
                            longitude: cubit.searchCities[index].longitude,
                            cityId: cubit.searchCities[index].cityId,
                            name: cubit.searchCities[index].name,
                          );
                          return CityInfo(
                            cubit: cubit,
                            cityHive: cityHive,
                            index: index,
                            state: state,
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
