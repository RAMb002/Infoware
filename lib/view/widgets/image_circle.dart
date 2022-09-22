import 'package:flutter/material.dart';
import 'package:infoware/model/data.dart';
import 'package:infoware/view/styles.dart';

class ImageCircle extends StatelessWidget {
  const ImageCircle({
    super.key,
    required this.index,
    this.size = 40.0,
  });

  final int index;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade100),
      child: ColorFiltered(
          colorFilter: ColorFilter.mode(
              index != 1 && index != 3 ? kPrimaryColor : Colors.transparent, BlendMode.color),
          child: Image.asset(
            Data.watchList[index].image,
            height: 20,
            width: 20,
            color: index == 1 ? kPrimaryColor : null,
          )),
    );
  }
}
