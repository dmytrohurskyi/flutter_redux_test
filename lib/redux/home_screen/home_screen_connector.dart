import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen_view_model.dart';

class HomeScreenConnector extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Locale _userLocale = Localizations.localeOf(context);

    return StoreConnector<AppState, HomeScreenViewModel>(
      distinct: true,
      onInit: (store){
        store.dispatch(HomeScreenSaveAppLang(_userLocale.languageCode));
        store.dispatch(HomeScreenGetWeatherAction());
      },
      converter: (store) {
        return HomeScreenViewModel(
          error: store.state.homeScreenState.error,
          isLoading: store.state.homeScreenState.isLoading,
          weatherData: store.state.homeScreenState.weatherData,
        );
      },
      builder: (_, viewModel) {
        return HomeScreen(
          viewModel: viewModel,
        );
      },
    );
  }
}
