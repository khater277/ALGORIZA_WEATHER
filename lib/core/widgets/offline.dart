import 'package:algoriza_weather/core/utils/app_strings.dart';
import 'package:algoriza_weather/core/utils/icons_broken.dart';
import 'package:algoriza_weather/core/utils/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class OfflineWidget extends StatelessWidget {
  final Widget onlineWidget;
  const OfflineWidget({Key? key, required this.onlineWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return OfflineBuilder(
        connectivityBuilder: (
          BuildContext context,
          ConnectivityResult connectivity,
          Widget child,
        ) {
          final bool connected = connectivity != ConnectivityResult.none;
          return connected
              ? onlineWidget
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      IconBroken.Danger,
                      size: AppSize.s250,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.noInternet,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                );
        },
        child: const SizedBox(),
      );
    });
  }
}
