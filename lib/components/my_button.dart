import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {required this.color,
      required this.buttonText,
      required this.style,
      required this.onTap});

  final color;
  final String buttonText;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(75.0, 75.0),
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
        ),
        onPressed: onTap,
        child: Center(
          child: Text(buttonText, style: style,),
        ),
      ),
    );
  }
}
