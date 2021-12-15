import 'package:dio/dio.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

import 'location_service.dart';

class ApiService {
  ApiService();

  final _locationService = LocationService();

  final dio = Dio(BaseOptions(
      baseUrl: 'https://community-open-weather-map.p.rapidapi.com/'));

  Future<WeatherData?> fetchCurrentWeather() async {
    final location = await _locationService.getLocationName();

    final headers = {
      'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
      'x-rapidapi-key': '4faf0a50cfmshe772e0e39c20e6ap1e34f8jsn83d15eaf758a'
    };
    try{
      final response = await dio.get('/weather',
          queryParameters: {'q': location, 'units': 'metric'},
          options: Options(headers: headers));

        final weatherData = WeatherData.fromJson(response.data);
        weatherData.locationName = location;
        return weatherData;
    }
    catch(ex){
        return null;
    }
  }
}
