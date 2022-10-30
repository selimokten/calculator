import 'package:calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import '../components/my_second_buton.dart';
import '../constants.dart';
import 'package:calculator/components/my_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

CalculatorBrain calculatorBrain = CalculatorBrain();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Calculater Output
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 15.0),
            child: Text(
              calculatorBrain.getResult(),
              style: kOutputTextStyle,
            ),
          ),
          //
          // Buttons Create First Row
          // 1
          Row(
            children: [
              MyButton(
                color: kUpButtonColor,
                buttonText: calculatorBrain.inputIsEmpty() ? buttons[0] : 'C',
                style: kUpButtonsStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[0]);
                  });
                },
              ),
              MyButton(
                color: kUpButtonColor,
                buttonText: buttons[1],
                style: kUpButtonsStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[1]);
                  });
                },
              ),
              MyButton(
                color: kUpButtonColor,
                buttonText: buttons[2],
                style: kUpButtonsStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[2]);
                  });
                },
              ),
              MyButton(
                color: kRightButtonColor,
                buttonText: buttons[3],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[3]);
                  });
                },
              ),
            ],
          ),
          //
          // Buttons Create Second Row
          // 2
          Row(
            children: [
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[4],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[4]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[5],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[5]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[6],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[6]);
                  });
                },
              ),
              MyButton(
                color: kRightButtonColor,
                buttonText: buttons[7],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[7]);
                  });
                },
              ),
            ],
          ),
          //
          // Buttons Create Third Row
          // 3
          Row(
            children: [
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[8],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[8]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[9],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[9]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[10],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[10]);
                  });
                },
              ),
              MyButton(
                color: kRightButtonColor,
                buttonText: buttons[11],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[11]);
                  });
                },
              ),
            ],
          ),
          //
          // Buttons Create Fourth Row
          // 4
          Row(
            children: [
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[12],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[12]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[13],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[13]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[14],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[14]);
                  });
                },
              ),
              MyButton(
                color: kRightButtonColor,
                buttonText: buttons[15],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[15]);
                  });
                },
              ),
            ],
          ),
          //
          // Buttons Create Fifth Row
          // 5          
          Row(
            children: [
              MySecondButton(
                color: kMainButtonColor,
                buttonText: buttons[16],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[16]);
                  });
                },
              ),
              MyButton(
                color: kMainButtonColor,
                buttonText: buttons[17],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[17]);
                  });
                },
              ),
              MyButton(
                color: kRightButtonColor,
                buttonText: buttons[18],
                style: kButtonTextStyle,
                onTap: () {
                  setState(() {
                    calculatorBrain.calculate(buttons[18]);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
