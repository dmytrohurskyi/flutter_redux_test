import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_action.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen_viewmodel.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/list_item_widget.dart';

class CitiesListScreenConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CitiesListScreenViewModel>(
      distinct: true,
      converter: (store) {
        final _cityProps = _generateCityItemProps(store);
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

  List<CitiesListItemProps> _generateCityItemProps(Store<AppState> store) {
    return [
      CitiesListItemProps(
          city: 'Kyiv',
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Kyiv'));
          }),
      CitiesListItemProps(
          city: 'Odesa',
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Odesa'));
          }),
      CitiesListItemProps(
          city: 'London',
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('London'));
          }),
      CitiesListItemProps(
          city: 'New York',
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('New York'));
          }),
      CitiesListItemProps(
          city: 'Lviv, Ukraine',
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Lviv, Ukraine'));
          }),
    ];
  }
}
