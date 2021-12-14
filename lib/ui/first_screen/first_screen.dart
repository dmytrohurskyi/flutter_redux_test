import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/ui/first_screen/first_screen_view_model.dart';

class FirstScreen extends StatelessWidget {
  final FirstScreenViewModel viewModel;

  const FirstScreen({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('### REDRAW');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              child: const Text(
                'Press me',
                style: TextStyle(
                  fontSize: 26.0,
                  color: Colors.green,
                ),
              ),
              onPressed: viewModel.addCounter,
            ),
            Text(
              '${viewModel.count}',
              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 16.0),
            if (viewModel.count > 0)
              CupertinoButton(
                child: const Text(
                  'Send counter to a backend (async)',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.deepOrange,
                  ),
                ),
                onPressed: viewModel.save,
              ),
            const SizedBox(height: 16.0),
            if (viewModel.isCounterSaved)
              const Icon(
                Icons.check_circle,
                size: 40.0,
                color: Colors.green,
              ),
          ],
        ),
      ),
    );
  }
}
