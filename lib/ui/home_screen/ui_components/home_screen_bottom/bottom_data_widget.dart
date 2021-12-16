import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/ui_components/home_screen_bottom/start_column_widget.dart';

import 'end_column_widget.dart';
import 'middle_column_widget.dart';


class BottomDataWidget extends StatefulWidget {
  final WeatherData weatherData;

  const BottomDataWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _BottomDataWidgetState createState() => _BottomDataWidgetState();
}

class _BottomDataWidgetState extends State<BottomDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StartColumnWidget(weatherData: widget.weatherData),
        const SizedBox(
          width: 48,
        ),
        MiddleColumnWidget(weatherData: widget.weatherData),
        const SizedBox(
          width: 48,
        ),
        EndColumnWidget(weatherData: widget.weatherData),
      ],
    );
  }
}
