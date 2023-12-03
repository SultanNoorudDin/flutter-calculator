import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const Buttons({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () {
            callBack();
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(Color(fillColor)),
            foregroundColor: MaterialStateProperty.all<Color>(Color(textColor)),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize)),
          ),
        ),
      ),
    );
  }
}
