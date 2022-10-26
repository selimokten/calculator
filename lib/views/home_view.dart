import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> buttons = [
    'AC',
    '+/-',
    '%',
    '÷',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    '=',
  ];

  String user_question = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 200.0),
            child: Text(
              user_question,
              style: kAnswerTextStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
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
                }),
          ),
        ),
      ],
    ));
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
