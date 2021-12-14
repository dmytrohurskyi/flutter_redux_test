import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class FirstScreenState extends Equatable {
  final int count;
  final bool isCounterSaved;

  const FirstScreenState({
    required this.count,
    required this.isCounterSaved,
  });

  factory FirstScreenState.initial() {
    return const FirstScreenState(
      count: 0,
      isCounterSaved: false,
    );
  }

  FirstScreenState copyWith({
    int? count,
    bool? isCounterSaved,
  }) {
    return FirstScreenState(
      count: count ?? this.count,
      isCounterSaved: isCounterSaved ?? this.isCounterSaved,
    );
  }

  @override
  List<Object> get props => [
        count,
        isCounterSaved,
      ];
}
