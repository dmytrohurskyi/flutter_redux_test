import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_state.dart';
import 'package:redux_flutter_app_for_vova/services/api_service.dart';

class HomeScreenMiddleware extends MiddlewareClass<AppState> {
  final ApiService apiService;

  HomeScreenMiddleware({required this.apiService});

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case HomeScreenGetWeatherAction:
        _fetchWeather(store);
        break;
      default:
        break;
    }
  }

  void _fetchWeather(Store<AppState> store) async {
    apiService.fetchCurrentWeather().then((response) {
      if (response == null || response is String) {
        // isError = true;
        store.dispatch(HomeScreenErrorOccurredAction(response));
      } else {
        store.dispatch(HomeScreenSaveWeatherAction(response));
      }
    });
  }
}
