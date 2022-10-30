import 'package:flutter/material.dart';

class MySecondButton extends StatelessWidget {
  const MySecondButton(
      {super.key, required this.color,
      required this.buttonText,
      required this.style,
      required this.onTap});

  final Color color;
  final String buttonText;
  final TextStyle style;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: color,
          minimumSize: const Size(170, 75.0),
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onTap,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            buttonText,
            style: style,
          ),
        ),
      ),
    );
  }
}
