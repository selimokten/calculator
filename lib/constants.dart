import 'package:flutter/material.dart';

// List of Buttons
final List<String> buttons = [
  'AC',
  '+/-',
  '%',
  '÷',
  '7',
  '8',
  '9',
  'x',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '0',
  '.',
  '=',
];

/// COLORS ///
const kBackgroundColor = Color(0xFF000000); // Background Color
const kMainButtonColor = Color(0xFF313131); // Colors number buttons
const kRightButtonColor = Color(0xFFF69906);// Colors right operator buttons
const kUpButtonColor = Color(0xFF9F9F9F);   // Colors up operator buttons

//Main button text style
const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.white,
);

//Calculate screen output text style
const TextStyle kOutputTextStyle = TextStyle(
  fontSize: 60.0,
  color: Colors.white,
);

//Up operators text style
const TextStyle kUpButtonsStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.black,
);
