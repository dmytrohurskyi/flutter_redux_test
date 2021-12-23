import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';
import 'package:redux_flutter_app_for_vova/environment.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/home_screen_view_model.dart';
import 'package:redux_flutter_app_for_vova/ui/home_screen/ui_components/flavors_ui/custom_gradient_decorations.dart';

import 'loading_data_indicator_widget.dart';
import 'main_column_home_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  final HomeScreenViewModel viewModel;

  const HomeBodyWidget({Key? key, required this.viewModel}) : super(key: key);

  BoxDecoration getGradient() {
    var envType = GetIt.I<Environment>().current;
    if (envType == EnvironmentType.paid) {
      return paidGradientBoxDecoration;
    } else {
      return freeGradientBoxDecoration;
    }
  }

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
            S.of(context).someErrorOccurredMsg(viewModel.error),
            style: const TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
      );
    }
    return Container(
      decoration: getGradient(),
      child: SafeArea(
        child: MainColumnHomeWidget(
          weatherData: viewModel.weatherData!,
        ),
      ),
    );
  }
}
