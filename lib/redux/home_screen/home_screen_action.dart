import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

class HomeScreenGetWeatherAction {}

class HomeScreenErrorOccurredAction {
  final String error;

  HomeScreenErrorOccurredAction(this.error);
}

class HomeScreenSaveWeatherAction {
  final WeatherData weatherData;

  HomeScreenSaveWeatherAction(this.weatherData);
}
