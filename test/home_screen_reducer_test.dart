import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/data_models/nested_classes/main_information.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_reducer.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_action.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';

void main() {
  group('Home Screen Reducer', () {
    late Store<AppState> mockStore;

    setUp(() {
      mockStore = Store<AppState>(
        appReducer,
        middleware: [],
        // middleware: [HomeScreenMiddleware(apiService: _apiService),AppNavigationMiddleware(),
        initialState: AppState.initial(),
      );
    });

    test('On error should update error property with msg & isLoading to false',
        () {
      expect(mockStore.state.homeScreenState.isLoading, true);
      expect(mockStore.state.homeScreenState.error, '');

      mockStore.dispatch(HomeScreenErrorOccurredAction('404 city not found'));

      expect(mockStore.state.homeScreenState.isLoading, false);
      expect(mockStore.state.homeScreenState.error, '404 city not found');
    });

    test('Save weather action should properly update the weatherData', () {
      expect(mockStore.state.homeScreenState.isLoading, true);
      expect(mockStore.state.homeScreenState.error, '');
      expect(mockStore.state.homeScreenState.weatherData?.mainInformation?.temp,
          WeatherData().mainInformation?.temp);

      mockStore.dispatch(HomeScreenSaveWeatherAction(
          WeatherData(mainInformation: MainInformation(temp: 28.03))));

      expect(mockStore.state.homeScreenState.isLoading, false);
      expect(mockStore.state.homeScreenState.error, '');
      expect(mockStore.state.homeScreenState.weatherData?.mainInformation?.temp,
          28.03);
    });

    test('Selected city should be updated when '
        'CitiesListScreenCitySelectedAction dispatched ', () {
      expect(mockStore.state.homeScreenState.selectedCity, '');
      mockStore.dispatch(CitiesListScreenCitySelectedAction('Kyiv'));
      expect(mockStore.state.homeScreenState.selectedCity, 'Kyiv');
    });
  });
}
