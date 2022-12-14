import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

import 'calculator_states.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(InitialCalculatorState());

  String userInput = '';
  String answer = '';

  void symbol({required String symbol}) {
    userInput += symbol;
    emit(
      SymbolCalculatorState(),
    );
  }

  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
    emit(
      DeleteCalculatorState(),
    );
  }

  void clear() {
    userInput = '';
    answer = '';
    emit(
      ClearCalculatorState(),
    );
  }

  void calculate() {
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
    emit(
      ResultCalculatorState(),
    );
  }
}
