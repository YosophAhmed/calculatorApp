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
    return BlocBuilder<CalculatorCubit, CalculatorState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<CalculatorCubit>(context);
        return Padding(
          padding: EdgeInsets.only(
            top: 4.h,
            left: 1.w,
            right: 1.w,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w,),
                child: SizedBox(
                  width: double.infinity,
                  height: 40.h,
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cubit.userInput,
                          style: GoogleFonts.montserrat(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          cubit.answer.isEmpty ? '' : ' = ${cubit.answer}',
                          style: GoogleFonts.montserrat(
                            fontSize: 60.sp,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                      text: 'AC',
                      onTap: () {
                        cubit.clear();
                      },
                    ),
                    CalculatorButton(
                      text: '+/-',
                      onTap: () {
                        cubit.delete();
                      },
                    ),
                    CalculatorButton(
                      text: '%',
                      onTap: () {
                        cubit.symbol(
                          symbol: '%',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '/',
                      textColor: Colors.orange,
                      textSize: 45,
                      onTap: () {
                        cubit.symbol(
                          symbol: '/',
                        );
                      },
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
                      onTap: () {
                        cubit.symbol(
                          symbol: '7',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '8',
                      onTap: () {
                        cubit.symbol(
                          symbol: '8',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '9',
                      onTap: () {
                        cubit.symbol(
                          symbol: '9',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: 'x',
                      textColor: Colors.orange,
                      textSize: 45,
                      onTap: () {
                        cubit.symbol(
                          symbol: '*',
                        );
                      },
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
                      onTap: () {
                        cubit.symbol(
                          symbol: '4',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '5',
                      onTap: () {
                        cubit.symbol(
                          symbol: '5',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '6',
                      onTap: () {
                        cubit.symbol(
                          symbol: '6',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '-',
                      textColor: Colors.orange,
                      textSize: 45,
                      onTap: () {
                        cubit.symbol(
                          symbol: '-',
                        );
                      },
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
                      onTap: () {
                        cubit.symbol(
                          symbol: '1',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '2',
                      onTap: () {
                        cubit.symbol(
                          symbol: '2',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '3',
                      onTap: () {
                        cubit.symbol(
                          symbol: '3',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '+',
                      textColor: Colors.orange,
                      textSize: 45,
                      onTap: () {
                        cubit.symbol(
                          symbol: '+',
                        );
                      },
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
                      onTap: () {
                        cubit.symbol(
                          symbol: '0',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '.',
                      textSize: 40,
                      onTap: () {
                        cubit.symbol(
                          symbol: '.',
                        );
                      },
                    ),
                    CalculatorButton(
                      text: '=',
                      textColor: Colors.orange,
                      textSize: 45,
                      onTap: () {
                        cubit.calculate();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
