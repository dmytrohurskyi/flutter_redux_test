import 'package:flutter/cupertino.dart';
import 'package:redux_flutter_app_for_vova/redux/cities_list_screen/cities_list_screen_connector.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_connector.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => CitiesListScreenConnector(),
  //'/home': (BuildContext context) => HomeScreenConnector(),
};
