import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:calculator/constants.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ReusableTextButton extends StatelessWidget {
  ReusableTextButton({required this.text, required this.style});

  final String text;
  final ButtonStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          for (double i = 0; i < 4; i++)
            BoxShadow(
              color: Colors.white,
              blurRadius: 2 * i,
              inset: true,
            )
        ],
      ),
      child: TextButton(
        style: style,
        onPressed: () {},
        child: Text(
          text,
          style: kTextStyle,
        ),
      ),
    );
  }
}

class NeonButton extends StatelessWidget {
  const NeonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
