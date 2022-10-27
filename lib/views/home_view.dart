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
              calculator_brain.getInput(),
              style: kAnswerTextStyle,
            ),
          ),
          Row(
            children: [
              MyButton(
                  color: kUpOperatorColor,
                  buttonText:
                      calculator_brain.inputIsEmpty() ? buttons[0] : 'C',
                  style: kUpButtonsStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.clearInput();
                    });
                  }),
              MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[1],
                  style: kUpButtonsStyle,
                  onTap: () {
                    setState(() {});
                  }),
              MyButton(
                  color: kUpOperatorColor,
                  buttonText: buttons[2],
                  style: kUpButtonsStyle,
                  onTap: () {}),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[3],
                  style: kTextStyle,
                  onTap: () {}),
            ],
          ),
          Row(
            children: [
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[4],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[4]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[5],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[5]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[6],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[6]);
                    });
                  }),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[7],
                  style: kTextStyle,
                  onTap: () {}),
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
                      calculator_brain.setInput(buttons[8]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[9],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[9]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[10],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[10]);
                    });
                  }),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[11],
                  style: kTextStyle,
                  onTap: () {}),
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
                      calculator_brain.setInput(buttons[12]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[13],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[13]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[14],
                  style: kTextStyle,
                  onTap: () {
                    setState(() {
                      calculator_brain.setInput(buttons[14]);
                    });
                  }),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[15],
                  style: kTextStyle,
                  onTap: () {}),
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
                      calculator_brain.setInput(buttons[16]);
                    });
                  }),
              MyButton(
                  color: kButtonNumbersColor,
                  buttonText: buttons[17],
                  style: kTextStyle,
                  onTap: () {}),
              MyButton(
                  color: kRightOperatorColor,
                  buttonText: buttons[18],
                  style: kTextStyle,
                  onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
