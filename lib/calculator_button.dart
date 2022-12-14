import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textSize;
  final bool isPill;

  const CalculatorButton({
    Key? key,
    required this.text,
    this.textColor,
    this.textSize,
    this.isPill = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final squareSideLength = width / 5;
    final buttonWidth = squareSideLength * (isPill ? 2.2 : 1);
    final buttonSize = Size(buttonWidth, squareSideLength);

    return SizedBox(
      height: buttonSize.height,
      width: buttonSize.width,
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(width / 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(buttonSize.width),
                color: const Color.fromRGBO(239, 238, 238, 1),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(5, 5),
                    color: Colors.white,
                  ),
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(4.5, 4.5),
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(isPill ? -0.6 : 0, 0),
              child: Text(
                text,
                style: GoogleFonts.montserrat(
                  fontSize: textSize ?? 30,
                  fontWeight: FontWeight.bold,
                  color: textColor ?? Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
