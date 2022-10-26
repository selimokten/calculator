import 'package:calculator/components/my_button.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

