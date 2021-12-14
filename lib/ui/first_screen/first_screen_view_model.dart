import 'package:equatable/equatable.dart';

class FirstScreenViewModel extends Equatable {
  final int count;
  final Function() addCounter;
  final Function() save;
  final bool isCounterSaved;

  const FirstScreenViewModel({
    required this.count,
    required this.addCounter,
    required this.save,
    required this.isCounterSaved,
  });

  @override
  List<Object> get props => [
        count,
        addCounter,
        save,
        isCounterSaved,
      ];
}
