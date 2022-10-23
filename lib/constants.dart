import 'package:flutter/material.dart';

Color shadowColor = Colors.orange.shade600;

final ButtonStyle kNumbersButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black,
  minimumSize: Size(100, 100),
  padding: EdgeInsets.all(10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
  ),
);

final ButtonStyle kOptionsButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black,
  minimumSize: Size(100, 100),
  padding: EdgeInsets.all(10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
  ),
);

final TextStyle kTextStyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);
