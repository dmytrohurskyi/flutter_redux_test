import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_state.dart';

@immutable
class AppState extends Equatable {
  final HomeScreenState homeScreenState;
  final CitiesListScreenState citiesListScreenState;

  const AppState({
    required this.homeScreenState,
    required this.citiesListScreenState,
  });

  factory AppState.initial() {
    return AppState(
        homeScreenState: HomeScreenState.initial(),
        citiesListScreenState: CitiesListScreenState.initial());
  }

  AppState copyWith(
    HomeScreenState? homeScreenState,
    CitiesListScreenState? citiesListScreenState,
  ) {
    return AppState(
      homeScreenState: homeScreenState ?? this.homeScreenState,
      citiesListScreenState:
          citiesListScreenState ?? this.citiesListScreenState,
    );
  }

  @override
  List<Object> get props => [
        homeScreenState,
        citiesListScreenState,
      ];
}
