import 'package:calculator/calculator_cubit/calculator_cubit.dart';
import 'package:calculator/calculator_cubit/calculator_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/calculator_button.dart';

class CalculatorPageBody extends StatelessWidget {
  const CalculatorPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 2.h,
      ),
      child: Column(
        children: [
          BlocBuilder<CalculatorCubit, CalculatorState>(
            builder: (context, state) {
              var cubit = BlocProvider.of<CalculatorCubit>(context);
              return SizedBox(
                width: double.infinity,
                height: 35.h,
                child: SingleChildScrollView(
                  child: Text(
                    cubit.userInput,
                    style: GoogleFonts.montserrat(
                      fontSize: 100,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: 'AC',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '+/-',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '%',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '÷',
                  textColor: Colors.orange,
                  textSize: 45,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '7',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '8',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '9',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: 'x',
                  textColor: Colors.orange,
                  textSize: 45,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '4',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '5',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '6',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '-',
                  textColor: Colors.orange,
                  textSize: 45,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '1',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '2',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '3',
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '+',
                  textColor: Colors.orange,
                  textSize: 45,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CalculatorButton(
                  text: '0',
                  isPill: true,
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '.',
                  textSize: 40,
                  onTap: () {},
                ),
                CalculatorButton(
                  text: '=',
                  textColor: Colors.orange,
                  textSize: 45,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
