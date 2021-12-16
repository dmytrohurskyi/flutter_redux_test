import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/services/api_service.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen_view_model.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/ui_components/home_body_widget.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenViewModel viewModel;

  const HomeScreen({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeBodyWidget(viewModel: viewModel));
  }
}
