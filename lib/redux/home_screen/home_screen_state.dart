import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';

@immutable
class HomeScreenState extends Equatable {
  final String error;
  final bool isLoading;
  final WeatherData? weatherData;
  final String selectedCity;
  final String lang;

  const HomeScreenState({
    required this.error,
    required this.isLoading,
    required this.weatherData,
    required this.selectedCity,
    required this.lang,
  });

  factory HomeScreenState.initial() {
    return HomeScreenState(
      error: '',
      isLoading: true,
      weatherData: WeatherData(),
      selectedCity: '',
      lang: 'en',
    );
  }

  HomeScreenState copyWith({
    String? error,
    bool? isLoading,
    WeatherData? weatherData,
    String? selectedCity,
    String? lang,
  }) {
    return HomeScreenState(
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading,
        weatherData: weatherData ?? this.weatherData,
        selectedCity: selectedCity ?? this.selectedCity,
        lang: lang ?? this.lang);
  }

  @override
  List<Object> get props =>
      [error, isLoading, weatherData!, selectedCity, lang];
}
