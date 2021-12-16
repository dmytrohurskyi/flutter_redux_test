import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_reducer.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_action.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen_viewmodel.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/list_item_widget.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen_view_model.dart';

class CitiesListScreenConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cityProps = [
      CitiesListItemProps(city: 'Kyiv', onPress: () {}),
      CitiesListItemProps(city: 'Lviv', onPress: () {}),
      CitiesListItemProps(city: 'Odesa', onPress: () {}),
      CitiesListItemProps(city: 'London', onPress: () {}),
      CitiesListItemProps(city: 'New York', onPress: () {}),
    ];

    return StoreConnector<AppState, CitiesListScreenViewModel>(
      distinct: true,
      converter: (store) {
        return CitiesListScreenViewModel(
          citiesPropsList: _cityProps,
        );
      },
      builder: (_, viewModel) {
        return CitiesListScreen(
          viewModel: viewModel,
        );
      },
    );
  }
}
