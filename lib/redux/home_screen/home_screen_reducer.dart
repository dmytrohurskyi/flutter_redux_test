import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_action.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_state.dart';

final homeScreenReducer = combineReducers<HomeScreenState>(
  [
    TypedReducer<HomeScreenState, HomeScreenErrorOccurredAction>(
      _homeScreenErrorOccurredAction,
    ),
    TypedReducer<HomeScreenState, HomeScreenSaveWeatherAction>(
      _homeScreenSaveWeatherAction,
    ),
    TypedReducer<HomeScreenState, CitiesListScreenCitySelectedAction>(
      _citiesListScreenCitySelectedAction,
    ),
  ],
);

HomeScreenState _homeScreenErrorOccurredAction(
  HomeScreenState state,
  HomeScreenErrorOccurredAction action,
) {

  return state.copyWith(isLoading: false, error: action.error ?? 'Null exception');
}

HomeScreenState _homeScreenSaveWeatherAction(
  HomeScreenState state,
  HomeScreenSaveWeatherAction action,
) {
  return state.copyWith(
      isLoading: false, error: '', weatherData: action.weatherData);
}

HomeScreenState _citiesListScreenCitySelectedAction(
    HomeScreenState state,
    CitiesListScreenCitySelectedAction action
    ) {
  return state.copyWith(selectedCity: action.city);
}

