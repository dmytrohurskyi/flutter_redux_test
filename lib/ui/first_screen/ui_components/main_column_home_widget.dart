import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/services/api_service.dart';

import 'home_screen_bottom/bottom_data_widget.dart';
import 'home_screen_middle/middle_data_widget.dart';
import 'home_screen_top/top_data_widget.dart';

class MainColumnHomeWidget extends StatelessWidget {
  final WeatherData weatherData;

  const MainColumnHomeWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
          child: TopDataWidget(
            weatherData: weatherData,
          ),
        ),
        MiddleDataWidget(
          weatherData: weatherData,
        ),
        BottomDataWidget(
          weatherData: weatherData,
        ),
      ],
    );
  }
}
