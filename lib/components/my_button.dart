import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.color, required this.buttonText, required this.style, required this.onTap});

  final color;
  final String buttonText;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
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
