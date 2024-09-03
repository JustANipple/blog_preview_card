import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          shadowColor: shadowColor),
      debugShowCheckedModeBanner: false,
      home: const BlogPreviewCard(),
    );
  }
}

class BlogPreviewCard extends StatelessWidget {
  const BlogPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IntrinsicHeight(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 382),
          margin: const EdgeInsets.all(16),
          color: Colors.white,
          child: Column(children: [
            SvgPicture.asset(
              "assets/images/illustration-article.svg",
              semanticsLabel: "Avatar picture",
            ),
            const CardBadge(),
            const Text(
              "Published 21 Dec 2023",
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textDirection: TextDirection.ltr,
            ),
            const Text(
              "HTML & CSS foundations",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textDirection: TextDirection.ltr,
            ),
            const Text(
              "These languages are the backbone of every website, defining structure, content and presentation",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
              textDirection: TextDirection.ltr,
            ),
            const PictureAvatar(
                borderRadius: 20.0,
                asset: "assets/images/image-avatar.webp",
                spacing: 16.0,
                fontSize: 8.0),
          ]),
        ),
      )),
    );
  }
}

class CardBadge extends StatelessWidget {
  const CardBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(16),
      child: const Text(
        "Badge",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class PictureAvatar extends StatelessWidget {
  final double borderRadius;
  final String asset;
  final double spacing;
  final double fontSize;

  const PictureAvatar(
      {required this.borderRadius,
      required this.asset,
      required this.spacing,
      required this.fontSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Image.asset(asset),
        ),
        SizedBox(width: spacing),
        Text(
          avatarName,
          style: TextStyle(fontSize: fontSize),
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}
