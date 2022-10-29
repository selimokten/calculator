import 'package:flutter/material.dart';
import 'package:calculator/calculator_brain.dart';

class MyButton extends StatefulWidget {
  MyButton({required this.color, required this.buttonText, required this.style});

  final color;
  final String buttonText;
  final TextStyle style;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  CalculatorBrain calculatorBrain = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        setState(() {
          calculatorBrain.calculate(widget.buttonText);
          print(widget.buttonText);
        });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            style: widget.style,
          ),
        ),
      ),
    );
  }
}
