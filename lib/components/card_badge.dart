import 'package:flutter/material.dart';

class CardBadge extends StatelessWidget {
  final Color color;
  final double hPadding;
  final double vPadding;
  final double borderRadius;
  final Text text;

  const CardBadge(
      {required this.color,
      required this.hPadding,
      required this.vPadding,
      required this.borderRadius,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius), color: color),
      child: text,
    );
  }
}
