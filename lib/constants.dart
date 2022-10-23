import 'package:flutter/material.dart';

final ButtonStyle kFlatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black,
  backgroundColor: Colors.white,
  minimumSize: Size(100, 100),
  padding: EdgeInsets.all(10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
  ),
);
