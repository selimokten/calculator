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
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 15.0),
            child: Text(
              '0',
              style: kAnswerTextStyle,
            ),
          ),
          Row(
            children: [
              MyButton(
                  color: kUpOperatorColor,
                  buttonText: 'AC',
                      // calculator_brain.inputIsEmpty() ? buttons[0] : 'C',
                  style: kUpButtonsStyle,
                  ),
              MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[1],
                  style: kUpButtonsStyle,
                  ),
              MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[2],
                  style: kUpButtonsStyle,
                 ),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[3],
                  style: kTextStyle,
                  ),
            ],
          ),
          Row(
            children: [
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[4],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[5],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[6],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[7],
                  style: kTextStyle,
                  ),
            ],
          ),
          Row(
            children: [
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[8],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[9],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[10],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[11],
                  style: kTextStyle,
                  ),
            ],
          ),
          Row(
            children: [
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[12],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[13],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[14],
                  style: kTextStyle,
                  ),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[15],
                  style: kTextStyle,
                  ),
            ],
          ),
          Row(
            children: [
              MySecondButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[16],
                  style: kTextStyle,),
              MyButton(
                color: kButtonNumbersColor,
                buttonText: buttons[17],
                style: kTextStyle,
              ),
              MyButton(
                color: kRightOperatorColor,
                buttonText: buttons[18],
                style: kTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
