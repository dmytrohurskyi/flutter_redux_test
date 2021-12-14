import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_action.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_state.dart';

final firstScreenReducer = combineReducers<FirstScreenState>(
  [
    TypedReducer<FirstScreenState, FirstScreenIncreaseCounterAction>(
      _firstScreenIncreaseCounterAction,
    ),
    TypedReducer<FirstScreenState, FirstScreenCounterSavedAction>(
      _firstScreenCounterSavedAction,
    ),
  ],
);

FirstScreenState _firstScreenIncreaseCounterAction(
  FirstScreenState state,
  FirstScreenIncreaseCounterAction action,
) {
  return state.copyWith(count: state.count + 1);
}

FirstScreenState _firstScreenCounterSavedAction(
  FirstScreenState state,
  FirstScreenCounterSavedAction action,
) {
  return state.copyWith(isCounterSaved: true);
}
