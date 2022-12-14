import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_cubit/calculator_cubit.dart';
import 'calculator_cubit/calculator_states.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalculatorCubit(),
      child: BlocBuilder<CalculatorCubit, CalculatorState>(
        builder: (context, state) {
          return const Scaffold();
        },
      ),
    );
  }
}
