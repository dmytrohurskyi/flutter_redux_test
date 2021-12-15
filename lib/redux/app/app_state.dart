import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_state.dart';

@immutable
class AppState extends Equatable {
  final HomeScreenState homeScreenState;

  const AppState({
    required this.homeScreenState,
  });

  factory AppState.initial() {
    return AppState(
      homeScreenState: HomeScreenState.initial(),
    );
  }

  AppState copyWith(
    HomeScreenState? homeScreenState,
  ) {
    return AppState(
      homeScreenState: homeScreenState ?? this.homeScreenState,
    );
  }

  @override
  List<Object> get props => [
        homeScreenState,
      ];
}
