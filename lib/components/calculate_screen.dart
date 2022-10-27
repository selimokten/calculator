import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 15.0),
      child: Text(user_question, style: kTextStyle,),
    );
  }
}