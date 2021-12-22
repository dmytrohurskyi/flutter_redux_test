import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:redux_flutter_app_for_vova/environment.dart';
import 'package:redux_flutter_app_for_vova/redux/app/app_state.dart';
import 'package:redux_flutter_app_for_vova/redux/store.dart';
import 'package:redux_flutter_app_for_vova/routes.dart';
import 'package:redux_flutter_app_for_vova/services/analytics_service.dart';

/// IMPORTANT!!!
/// analysis_options.yaml file is some kind a linter.

void main() async {
  // Firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await RemoteConfig.instance.fetchAndActivate();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  // Singletons setup
  GetIt.I.registerLazySingleton(() => AnalyticsService());
  GetIt.I.registerLazySingleton(() => Environment());

  await GetIt.I<Environment>().initializeEnvType();

  runApp(
    StoreProvider<AppState>(
      store: createStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  static final navKey = GlobalKey<NavigatorState>();

  AnalyticsService get _analyticsService => GetIt.I<AnalyticsService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Redux',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: '/',
      navigatorKey: navKey,
      navigatorObservers: [
        _analyticsService.getAnalyticsObserver(),
      ],
    );
  }
}
