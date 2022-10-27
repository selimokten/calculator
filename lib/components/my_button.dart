import 'package:flutter/material.dart';
import 'package:calculator/calculator_brain.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.buttonText, required this.style});

  final color;
  final String buttonText;
  final TextStyle style;

  CalculatorBrain calculatorBrain = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: style,
          ),
        ),
      ),
    );
  }
}
