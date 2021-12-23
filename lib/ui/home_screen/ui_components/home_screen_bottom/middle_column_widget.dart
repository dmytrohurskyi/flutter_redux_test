import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class MiddleColumnWidget extends StatefulWidget {
  final WeatherData weatherData;

  const MiddleColumnWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _MiddleColumnWidgetState createState() => _MiddleColumnWidgetState();
}

class _MiddleColumnWidgetState extends State<MiddleColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 115),
          child: Row(
            // Upper item(humidity)
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icons/humidity.png',
                    width: 48,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      S.of(context).humidityTitle,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '${widget.weatherData.mainInformation!.humidity ?? '00'}',
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
