import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen_viewmodel.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/cities_list_view_widget.dart';

class CitiesBodyWidget extends StatelessWidget {
  final CitiesListScreenViewModel viewModel;

  const CitiesBodyWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CitiesListViewWidget(citiesPropsList: viewModel.citiesPropsList);
  }
}
