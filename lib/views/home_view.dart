import 'package:calculator/calculator_brain.dart';
import 'package:calculator/components/my_button.dart';
import 'package:calculator/components/my_second_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

CalculatorBrain calculator_brain = CalculatorBrain();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 15.0),
            child: Text(
              calculator_brain.getResult(),
              style: kAnswerTextStyle,
            ),
          ),
          Flexible(
            child: Row(
              children: [
                MyButton(
                  color: kUpOperatorColor,
                  buttonText: calculator_brain.inputIsEmpty() ? buttons[0] : 'C',
                  style: kUpButtonsStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.calculate(buttons[0]);
                    });
                  },
                ),
                MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[1],
                  style: kUpButtonsStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.calculate(buttons[1]);
                    });
                  },
                ),
                MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[2],
                  style: kUpButtonsStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.calculate(buttons[2]);
                    });
                  },
                ),
                MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[3],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.calculate(buttons[3]);
                    });
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[4],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[4]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[5],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[5]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[6],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[6]);
                  });
                },
              ),
              MyButton(
                color: kRightOperatorColor,
                buttonText: buttons[7],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[7]);
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[8],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[8]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[9],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[9]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[10],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[10]);
                  });
                },
              ),
              MyButton(
                color: kRightOperatorColor,
                buttonText: buttons[11],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[11]);
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[12],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[12]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[13],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[13]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[14],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[14]);
                  });
                },
              ),
              MyButton(
                color: kRightOperatorColor,
                buttonText: buttons[15],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[15]);
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              MySecondButton(
                color: kButtonNumbersColor,
                buttonText: buttons[16],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[16]);
                  });
                },
              ),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[17],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[17]);
                  });
                },
              ),
              MyButton(
                color: kRightOperatorColor,
                buttonText: buttons[18],
                style: kTextStyle,
                onTap: () {
                  setState(() {
                    calculator_brain.calculate(buttons[18]);
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
