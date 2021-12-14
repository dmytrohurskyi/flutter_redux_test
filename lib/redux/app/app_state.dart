import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/redux/first_screen/first_screen_state.dart';

@immutable
class AppState extends Equatable {
  final FirstScreenState firstScreenState;

  const AppState({
    required this.firstScreenState,
  });

  factory AppState.initial() {
    return AppState(
      firstScreenState: FirstScreenState.initial(),
    );
  }

  AppState copyWith(
    FirstScreenState? firstScreenState,
  ) {
    return AppState(
      firstScreenState: firstScreenState ?? this.firstScreenState,
    );
  }

  @override
  List<Object> get props => [
        firstScreenState,
      ];
}
