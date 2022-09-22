import 'package:flutter/material.dart';
import 'package:infoware/view/styles.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({Key? key, required this.heading, required this.seeVisibility}) : super(key: key);

  final String heading;
  final bool seeVisibility;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Visibility(
          visible: seeVisibility,
          child: const Text(
            "See All",
            style: TextStyle(
              color: kSecondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}