import 'package:dio/dio.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

import 'location_service.dart';

class ApiService {
  ApiService();

  // final _locationService = LocationService();

  final dio =
      Dio(BaseOptions(baseUrl: 'https://api.openweathermap.org/data/2.5/'));

  Future<dynamic> fetchCurrentWeather(String cityName) async {
    // final location = await _locationService.getLocationName();
    const String appId = '285864255ee2f17e40e21232679a7174';

    try {
      final response = await dio.get('/weather',
          queryParameters: {'q': cityName, 'units': 'metric', 'appid': appId});

      final weatherData = WeatherData.fromJson(response.data);
      weatherData.locationName = cityName;
      return weatherData;
    } catch (ex) {
      if (ex is DioError) {
        return 'Type: ${ex.error}'
            '\n${ex.response?.data['cod']}: ${ex.response?.data['message']}';
      } else {
        return null;
      }
    }
  }
}
