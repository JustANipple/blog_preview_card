import 'package:blog_preview_card/constants.dart';
import 'package:flutter/material.dart';

class PictureAvatar extends StatelessWidget {
  final String asset;
  final double borderRadius;
  final double width;
  final double gap;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const PictureAvatar(
      {required this.asset,
      required this.borderRadius,
      required this.width,
      required this.gap,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Image.asset(asset),
        ),
        SizedBox(width: gap),
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fwExtraBold, color: color),
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
