// Mocks generated by Mockito 5.0.16 from annotations
// in redux_flutter_app_for_vova/test/data_model_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:redux_flutter_app_for_vova/services/api_service.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeDio_0 extends _i1.Fake implements _i2.Dio {}

/// A class which mocks [ApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiService extends _i1.Mock implements _i3.ApiService {
  MockApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio get dio =>
      (super.noSuchMethod(Invocation.getter(#dio), returnValue: _FakeDio_0())
          as _i2.Dio);
  @override
  _i4.Future<dynamic> fetchCurrentWeather(String? cityName) =>
      (super.noSuchMethod(Invocation.method(#fetchCurrentWeather, [cityName]),
          returnValue: Future<dynamic>.value()) as _i4.Future<dynamic>);
  @override
  String toString() => super.toString();
}
