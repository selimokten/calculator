import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main(){
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade700,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
