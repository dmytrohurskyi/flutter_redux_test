import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';
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
    apiService
        .fetchCurrentWeather(store.state.homeScreenState.lang,
            store.state.homeScreenState.selectedCity)
        .then((response) async {
      if (response == null || response is String) {
        // isError = true;
        await FirebaseCrashlytics.instance.recordError(
            response, StackTrace.current,
            reason: 'a fatal error from api', fatal: true);
        store.dispatch(HomeScreenErrorOccurredAction(response));
      } else {
        store.dispatch(HomeScreenSaveWeatherAction(response));
      }
    });
  }
}
