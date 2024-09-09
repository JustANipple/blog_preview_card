import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Illustration extends StatelessWidget {
  final String asset;
  final String semanticsLabel;
  final double? height;

  const Illustration({
    required this.asset,
    required this.semanticsLabel,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SvgPicture.asset(
        asset,
        semanticsLabel: semanticsLabel,
        fit: BoxFit.cover,
        height: height,
      ),
    );
  }
}
