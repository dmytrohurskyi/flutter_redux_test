import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class LoadingDataIndicatorWidget extends StatelessWidget {
  const LoadingDataIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              backgroundColor: Colors.purpleAccent,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              S.of(context).loadingWeatherDataMsg,
              style: const TextStyle(
                fontSize: 19,
                color: Colors.deepPurple,
              ),
            )
          ],
        ),
      ),
    );
  }
}
