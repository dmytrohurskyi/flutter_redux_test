import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:redux_flutter_app_for_vova/data_models/nested_classes/main_information.dart';
import 'package:redux_flutter_app_for_vova/data_models/nested_classes/time_stamps.dart';
import 'package:redux_flutter_app_for_vova/data_models/nested_classes/weather.dart';
import 'package:redux_flutter_app_for_vova/data_models/nested_classes/wind.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/services/api_service.dart';

import 'data_model_test.mocks.dart';

class MockResponse extends Mock implements Response {}

@GenerateMocks([ApiService])
void main() {
  late MockApiService apiService;
  setUp(() {
    apiService = MockApiService();
  });

  test(
      'If city was wrong named then ApiService fetchWeather()'
      'method throws an error and returns a string with a description of an error',
      () async {

    when(apiService.fetchCurrentWeather('')).thenThrow((_) => DioError(
          requestOptions: RequestOptions(path: ''),
          error: 'Not found 404',
        ));

    Response response = MockResponse();

    response = await apiService.fetchCurrentWeather('');

    expect(response, throwsA(DioError));
  });
}
