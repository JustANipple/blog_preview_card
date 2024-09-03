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
            child: const Column(children: [
              Illustration(
                asset: "assets/images/illustration-article.svg",
                semanticsLabel: "Avatar picture",
              ),
              CardBadge(
                  color: scaffoldBackgroundColor,
                  padding: 16,
                  text: "Learning"),
              SubTitle(),
              Title(),
              Description(),
              PictureAvatar(
                  borderRadius: 20.0,
                  asset: "assets/images/image-avatar.webp",
                  spacing: 16.0,
                  fontSize: 8.0),
            ]),
          ),
        ),
      ),
    );
  }
}

class Illustration extends StatelessWidget {
  final String asset;
  final String semanticsLabel;

  const Illustration({
    required this.asset,
    required this.semanticsLabel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: SvgPicture.asset(
        asset,
        semanticsLabel: semanticsLabel,
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "These languages are the backbone of every website, defining structure, content and presentation",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "HTML & CSS foundations",
      style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Published 21 Dec 2023",
      style: TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

class CardBadge extends StatelessWidget {
  final Color color;
  final double padding;
  final String text;

  const CardBadge(
      {required this.color,
      required this.padding,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
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
