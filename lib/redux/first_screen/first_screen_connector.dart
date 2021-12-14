import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_action.dart';
import 'package:redux_flutter_app_for_vova/ui/first_screen/first_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/first_screen/first_screen_view_model.dart';

class FirstScreenConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FirstScreenViewModel>(
      distinct: true,
      converter: (store) {
        return FirstScreenViewModel(
          count: store.state.firstScreenState.count,
          isCounterSaved: store.state.firstScreenState.isCounterSaved,
          addCounter: () {
            store.dispatch(FirstScreenIncreaseCounterAction());
          },
          save: () {
            store.dispatch(FirstScreenSaveCounterAction());
          },
        );
      },
      builder: (_, viewModel) {
        return FirstScreen(
          viewModel: viewModel,
        );
      },
    );
  }
}
