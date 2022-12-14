import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'pages/calculator_page.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: const CalculatorPage(),
        );
      },
    );
  }
}
