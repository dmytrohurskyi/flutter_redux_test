import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_action.dart';

class FirstScreenMiddleware extends MiddlewareClass<AppState> {
  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case FirstScreenSaveCounterAction:
        _saveCounter(store);
        break;
      default:
        break;
    }
  }

  void _saveCounter(Store<AppState> store) {
    // A simulation of an async request.
    Future.delayed(const Duration(seconds: 2), () {
      // Let's assume it's a response;
      store.dispatch(FirstScreenCounterSavedAction());
    });
  }
}
