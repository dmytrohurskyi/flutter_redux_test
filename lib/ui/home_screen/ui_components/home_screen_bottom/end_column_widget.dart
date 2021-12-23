import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class EndColumnWidget extends StatefulWidget {
  final WeatherData weatherData;

  const EndColumnWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _EndColumnWidgetState createState() => _EndColumnWidgetState();
}

class _EndColumnWidgetState extends State<EndColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // Upper item(Wind Speed)
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icons/wind.png',
                  width: 48,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    S.of(context).windSpeedTitle,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '${widget.weatherData.wind!.speed ?? '0.0'} ' +
                      S.of(context).metersPerSec,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          // Bottom item(sunrise)
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icons/sunset.png',
                  width: 48,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    S.of(context).sunsetTitle,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  DateFormat('hh:mm a').format(
                      DateTime.fromMillisecondsSinceEpoch(
                          widget.weatherData.timeStamps!.sunset!)),
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
