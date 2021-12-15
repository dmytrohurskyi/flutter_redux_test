import 'package:equatable/equatable.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

class HomeScreenViewModel extends Equatable {
  final String error;
  final bool isLoading;
  final WeatherData? weatherData;
  final String loadingErrorMessage;


  const HomeScreenViewModel(
      {required this.error,
      required this.isLoading,
      required this.weatherData,
      required this.loadingErrorMessage});

  @override
  List<Object> get props => [
        error,
        isLoading,
        weatherData!,
      ];
}
