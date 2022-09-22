import 'package:flutter/material.dart';
import 'package:infoware/view/styles.dart';

class TradeChangeText extends StatelessWidget {
  const TradeChangeText({
  super.key,
  required this.text,
  this.fontSize=14.0,
  this.redColor = kSecondaryColor,
  });

  final String text;
  final double fontSize;
  final Color? redColor;

  @override
  Widget build(BuildContext context) {

    return Row(
      children:  [

         Icon(
          Icons.arrow_upward,
          color: redColor,
          size: fontSize + 1.0,
        ),
        const SizedBox(
          width: 1,
        ),
        Text(
          text,
          style:
          TextStyle(color: redColor, fontWeight: FontWeight.bold,fontSize: fontSize),
        ),
      ],
    );
  }
}
