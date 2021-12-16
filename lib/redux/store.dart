import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_navigation_middleware.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_reducer.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_middleware.dart';
import 'package:redux_flutter_app_for_vova/services/api_service.dart';

Store<AppState> createStore() {
  final _apiService = ApiService();

  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      HomeScreenMiddleware(apiService: _apiService),
      AppNavigationMiddleware(),
    ],
  );
}
