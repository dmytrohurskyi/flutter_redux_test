import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/cities_body_widget.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/cities_list_screen_viewmodel.dart';

class CitiesListScreen extends StatelessWidget {
  final CitiesListScreenViewModel viewModel;
  const CitiesListScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CitiesBodyWidget(viewModel: viewModel));
  }
}
