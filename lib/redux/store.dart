import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_reducer.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_middleware.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      FirstScreenMiddleware(),
    ],
  );
}
