import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_states.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(InitialCalculatorState());

}