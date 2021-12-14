import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_connector.dart';
import 'package:redux_flutter_app_for_vova/redux/store.dart';

/// IMPORTANT!!!
/// analysis_options.yaml file is some kind a linter.

void main() {
  runApp(
    StoreProvider<AppState>(
      store: createStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Special for Vova',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreenConnector(),
    );
  }
}
