import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_reducer.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    homeScreenState: homeScreenReducer(
      state.homeScreenState,
      action,
    ),
    citiesListScreenState: citiesListScreenReducer(
      state.citiesListScreenState,
      action,
    ),
  );
}
