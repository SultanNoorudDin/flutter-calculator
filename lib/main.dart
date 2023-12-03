import 'package:calculator_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String res = '';
  String textToDisplay = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    print(btnVal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Calculator"),
        ),
        backgroundColor: const Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    '987',
                    style: GoogleFonts.rubik(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      color: Color(0x66FFFFFF),
                    )),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  '987',
                  style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  )),
                ),
              ),
              const Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Buttons(
                    text: 'AC',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  Buttons(
                    text: 'C',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '<',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '/',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '9',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '8',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '7',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: 'X',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '6',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '5',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '4',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '-',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '3',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '2',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '1',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '+',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '+/-',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '0',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '00',
                    fillColor: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                  Buttons(
                    text: '=',
                    fillColor: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                  ),
                ],
              ),
              // Add other rows of buttons if needed
            ],
          ),
        ),
      ),
    );
  }
}
