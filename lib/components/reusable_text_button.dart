import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';

class ReusableTextButton extends StatelessWidget {
  ReusableTextButton({required this.text, required this.style});

  final String text;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: style,
          onPressed:() {
            
          },
          child: Text(text),),
    );
  }
}
