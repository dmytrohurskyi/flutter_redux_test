import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_action.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen_viewmodel.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/list_item_widget.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class CitiesListScreenConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CitiesListScreenViewModel>(
      distinct: true,
      converter: (store) {
        final _cityProps = _generateCityItemProps(context, store);
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

  List<CitiesListItemProps> _generateCityItemProps(BuildContext context, Store<AppState> store) {
    return [
      CitiesListItemProps(
          city: S.of(context).Kyiv,
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Kyiv, UA'));
          }),
      CitiesListItemProps(
          city: S.of(context).Odesa,
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Odesa, UA'));
          }),
      CitiesListItemProps(
          city: S.of(context).London,
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('London, UK'));
          }),
      CitiesListItemProps(
          city: S.of(context).NewYork,
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('New York, US'));
          }),
      CitiesListItemProps(
          city: S.of(context).Lviv,
          onPress: () {
            store.dispatch(CitiesListScreenCitySelectedAction('Lviv, UA'));
          }),
    ];
  }
}
