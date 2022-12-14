import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_states.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(InitialCalculatorState());

  String userInput = '';
  String answer = '';

  void clear() {
    userInput = '';
    answer = '';
    emit(
      ClearCalculatorState(),
    );
  }

  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
    emit(
      DeleteCalculatorState(),
    );
  }

  void symbol({required String symbol}) {
    userInput += symbol;
    emit(
      SymbolCalculatorState(),
    );
  }
}
