import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF1C1C1C);
const kButtonNumbersColor = Color(0xFF505050);
const kRightOperatorColor = Color(0xFFFF9500);
const kUpOperatorColor = Color(0xFFD4D4D2);

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
  foregroundColor: Colors.white,
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
  color: Colors.white,
);

final TextStyle kAnswerTextStyle = TextStyle(
  fontSize: 60.0,
  color: Colors.white,
);

final TextStyle kUpButtonsStyle = TextStyle(
  fontSize: 30.0,
  color: Colors.black,
);
