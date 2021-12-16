import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CitiesListScreenState extends Equatable {
  final List<String> citiesList;

  const CitiesListScreenState({
    required this.citiesList,
  });

  factory CitiesListScreenState.initial() {
    return const CitiesListScreenState(
      citiesList: []
    );
  }

  CitiesListScreenState copyWith({
    List<String>? citiesList,

  }) {
    return CitiesListScreenState(
      citiesList: citiesList ?? this.citiesList,
    );
  }

  @override
  List<Object> get props => [
        citiesList,
      ];
}
