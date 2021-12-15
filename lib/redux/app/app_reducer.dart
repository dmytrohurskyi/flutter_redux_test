import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    homeScreenState: homeScreenReducer(
      state.homeScreenState,
      action,
    ),
  );
}
