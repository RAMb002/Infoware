import 'package:flutter/material.dart';

class SecondaryColorText extends StatelessWidget {
  const SecondaryColorText({
  super.key,
  required this.text,required this.fontSize
  });

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey.shade500,fontSize: fontSize),
    );
  }
}
