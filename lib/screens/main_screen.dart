import 'package:calculator/components/reusable_text_button.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('RESULT'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '1'),
                ReusableTextButton(text: '2'),
                ReusableTextButton(text: '3'),
                ReusableTextButton(text: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '4'),
                ReusableTextButton(text: '5'),
                ReusableTextButton(text: '6'),
                ReusableTextButton(text: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '7'),
                ReusableTextButton(text: '8'),
                ReusableTextButton(text: '9'),
                ReusableTextButton(text: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '%'),
                ReusableTextButton(text: '/'),
                ReusableTextButton(text: '.'),
                ReusableTextButton(text: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
