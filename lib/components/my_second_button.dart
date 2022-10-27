import 'package:flutter/material.dart';

class MySecondButton extends StatelessWidget {
  MySecondButton({required this.color, required this.buttonText, required this.style});

  final color;
  final String buttonText;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Text(
          buttonText,
          style: style,
        ),
      ),
    );
  }
}
