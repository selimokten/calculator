import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';

class ReusableTextButton extends StatelessWidget {
  ReusableTextButton({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: kFlatButtonStyle,
        onPressed:() {
          
        },
        child: Text(text),);
  }
}
