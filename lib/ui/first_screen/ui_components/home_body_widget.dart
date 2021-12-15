import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/ui/first_screen/home_screen_view_model.dart';

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
      return const Center(
        child: Text(
          'Some error occurred!',
          style: TextStyle(fontSize: 20),
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
