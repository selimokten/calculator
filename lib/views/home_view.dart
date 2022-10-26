import 'package:calculator/components/my_second_button.dart';
import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Calculater Screen
          Expanded(
            child: Container(
              color: Colors.amber,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: 220.0),
              child: Text(
                user_question,
                style: kAnswerTextStyle,
              ),
            ),
          ),
          //Calculater Buttons
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 60),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0 || index == 1 || index == 2) {
                    return MyButton(
                      onTap: () {
                        setState(() {
                          user_question += buttons[index];
                        });
                      },
                      color: kUpOperatorColor,
                      buttonText: buttons[index],
                      style: kUpButtonsStyle,
                    );
                  } else if (buttons[index] == '0') {
                    return MySecondButton(
                      color: kButtonNumbersColor,
                      buttonText: '0',
                      style: kTextStyle,
                      onTap: (() {}),
                    );
                  } else {
                    return MyButton(
                      onTap: () {
                        setState(() {
                          user_question += buttons[index];
                        });
                      },
                      color: isOperator(buttons[index])
                          ? kRightOperatorColor
                          : kButtonNumbersColor,
                      buttonText: buttons[index],
                      style: kTextStyle,
                    );
                  }
                },
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                MySecondButton(
                    color: kButtonNumbersColor,
                    buttonText: '0',
                    style: kTextStyle,
                    onTap: (() {})),
                Expanded(
                  child: MyButton(
                      color: kButtonNumbersColor,
                      buttonText: '.',
                      style: kTextStyle,
                      onTap: (() {})),
                ),
                Expanded(
                  child: MyButton(
                      color: kRightOperatorColor,
                      buttonText: '=',
                      style: kTextStyle,
                      onTap: (() {})),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool isOperator(String button) {
    if (button == '÷' ||
        button == 'x' ||
        button == '-' ||
        button == '+' ||
        button == '=') {
      return true;
    }
    return false;
  }
}
