import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

@immutable
class HomeScreenState extends Equatable {
  final String error;
  final bool isLoading;
  final WeatherData? weatherData;
  final String loadingErrorMessage;

  const HomeScreenState({
    required this.error,
    required this.isLoading,
    required this.weatherData,
    required this.loadingErrorMessage,
  });

  factory HomeScreenState.initial() {
    return HomeScreenState(
      error: '',
      isLoading: true,
      weatherData: WeatherData(),
      loadingErrorMessage: '',
    );
  }

  HomeScreenState copyWith({
    String? error,
    bool? isLoading,
    WeatherData? weatherData,
    String? loadingErrorMessage,
  }) {
    return HomeScreenState(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      weatherData: weatherData ?? this.weatherData,
      loadingErrorMessage: loadingErrorMessage ?? this.loadingErrorMessage,
    );
  }

  @override
  List<Object> get props => [
        error,
        isLoading,
        weatherData!,
        loadingErrorMessage,
      ];
}
