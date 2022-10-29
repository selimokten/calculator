import 'package:flutter/material.dart';

class MySecondButton2 extends StatelessWidget {
  MySecondButton2({required this.color, required this.buttonText, required this.style, required this.onTap});

  final color;
  final String buttonText;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
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
