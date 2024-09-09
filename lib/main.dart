import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_perfect/pixel_perfect.dart';
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
          shadowColor: shadowColor,
          fontFamily: "Figtree"),
      debugShowCheckedModeBanner: false,
      home: const BlogPreviewCard(),
    );
  }
}

class BlogPreviewCard extends StatelessWidget {
  const BlogPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PixelPerfect(
      assetPath: "design/mobile-design.jpg",
      scale: 1,
      initBottom: 20,
      initOpacity: 0.4,
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: shadowColor, offset: Offset(8, 8))
                ],
                color: cardColor,
                border: Border.all(width: 1.0, color: shadowColor),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            constraints: const BoxConstraints(maxWidth: 327),
            padding: const EdgeInsets.all(23),
            margin: const EdgeInsets.all(24),
            child: const IntrinsicHeight(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Illustration(
                      asset: "assets/images/illustration-article.svg",
                      semanticsLabel: "Avatar picture",
                    ),
                    SizedBox(height: 24),
                    CardBadge(
                        color: scaffoldBackgroundColor,
                        hPadding: 12,
                        vPadding: 4,
                        borderRadius: 4,
                        text: Text(
                          "Learning",
                          style: TextStyle(
                              fontWeight: fwExtraBold,
                              height: lh,
                              fontSize: 12,
                              letterSpacing: 0),
                          textDirection: TextDirection.ltr,
                        )),
                    SizedBox(height: 12),
                    SubTitle(
                        text: "Published 21 Dec 2023",
                        fontFamily: "Figtree",
                        fontSize: 12,
                        fontWeight: fwMedium,
                        height: lh,
                        color: headerColor),
                    SizedBox(height: 12),
                    Title(
                        text: "HTML & CSS foundations",
                        fontSize: 20,
                        fontWeight: fwExtraBold,
                        height: lh,
                        color: headerColor),
                    SizedBox(height: 12),
                    Description(
                        text:
                            "These languages are the backbone of every website, defining structure, content and presentation",
                        fontSize: 14,
                        fontWeight: fwMedium,
                        height: lh,
                        color: Color.fromRGBO(107, 107, 107, 1)),
                    SizedBox(height: 24),
                    PictureAvatar(
                      asset: "assets/images/image-avatar.webp",
                      borderRadius: 20.0,
                      width: 32,
                      gap: 11,
                      text: "Greg Hooper",
                      fontSize: 14,
                      fontWeight: fwExtraBold,
                      color: headerColor,
                    ),
                  ]),
            ),
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SvgPicture.asset(
        asset,
        semanticsLabel: semanticsLabel,
        fit: BoxFit.cover,
        height: 200,
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Color color;

  const Description({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: true,
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: height),
      textDirection: TextDirection.ltr,
    );
  }
}

class Title extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Color color;

  const Title({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: height),
      textDirection: TextDirection.ltr,
    );
  }
}

class SubTitle extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;
  final Color color;

  const SubTitle({
    required this.text,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.height,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        color: color,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}

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
