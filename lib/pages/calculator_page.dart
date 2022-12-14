import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../calculator_cubit/calculator_cubit.dart';
import 'calculator_page_body.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalculatorCubit(),
      child: const Scaffold(
        backgroundColor: Color.fromRGBO(239, 238, 238, 1),
        body: CalculatorPageBody(),
      ),
    );
  }
}
