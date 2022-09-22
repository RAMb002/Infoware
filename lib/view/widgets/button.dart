import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {super.key,
      required this.border,
      required this.text,
      required this.color,
      this.textColor = Colors.white,
      required this.borderColor,
      this.horizontalPadding = 20.0,
      this.verticalPadding = 8.0,
      this.fontSize = 14});

  final double border;
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: border),
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: fontSize),
        ),
      ),
    );
  }
}
