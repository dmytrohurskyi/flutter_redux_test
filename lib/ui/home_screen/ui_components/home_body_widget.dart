import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen_view_model.dart';

import 'loading_data_indicator_widget.dart';
import 'main_column_home_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  final HomeScreenViewModel viewModel;

  const HomeBodyWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isLoading) {
      return const LoadingDataIndicatorWidget();
    }
    if (viewModel.error.isNotEmpty) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            'Some error occurred!\n${viewModel.error}',
            style: const TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
      );
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.deepPurple,
          ],
        ),
      ),
      child: SafeArea(
        child: MainColumnHomeWidget(
          weatherData: viewModel.weatherData!,
        ),
      ),
    );
  }
}
