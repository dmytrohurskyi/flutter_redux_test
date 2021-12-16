import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/main.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_action.dart';

class AppNavigationMiddleware extends MiddlewareClass<AppState> {

  AppNavigationMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case CitiesListScreenCitySelectedAction:
        _navigateToHomeScreen(store);
        break;
      default:
        break;
    }
  }

  void _navigateToHomeScreen(Store<AppState> store) {
    MyApp.navKey.currentState?.pushNamed('/home');
  }
}
