import 'package:flutter/material.dart';
import 'package:infoware/view/styles.dart';

class PrimaryColorText extends StatelessWidget {
  const PrimaryColorText(
      {super.key, required this.text, required this.fontSize, this.textColor = kPrimaryColor});

  final String text;
  final double fontSize;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: fontSize),
    );
  }
}
