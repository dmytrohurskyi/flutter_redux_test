import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    firstScreenState: firstScreenReducer(
      state.firstScreenState,
      action,
    ),
  );
}
