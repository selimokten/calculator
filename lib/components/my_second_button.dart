import 'package:flutter/material.dart';

class MySecondButton extends StatelessWidget {
  MySecondButton({required this.color, required this.buttonText, required this.style, required this.onTap});

  final color;
  final String buttonText;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 185,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText,
          style: style,
        ),
      ),
    );
  }
}
