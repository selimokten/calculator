import 'package:calculator/components/reusable_text_button.dart';
import 'package:calculator/constants.dart';
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
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '1', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '2', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '3', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '+', style: kOptionsButtonStyle,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '4', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '5', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '6', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '-', style: kOptionsButtonStyle,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '7', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '8', style: kNumbersButtonStyle,),
                ReusableTextButton(text: '9', style: kNumbersButtonStyle,),
                ReusableTextButton(text: 'X', style: kOptionsButtonStyle,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReusableTextButton(text: '%', style: kOptionsButtonStyle,),
                ReusableTextButton(text: '/', style: kOptionsButtonStyle,),
                ReusableTextButton(text: '.', style: kOptionsButtonStyle,),
                ReusableTextButton(text: '=', style: kOptionsButtonStyle,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
