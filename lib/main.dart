import 'package:blog_preview_card/components/card_badge.dart';
import 'package:blog_preview_card/components/illustration.dart';
import 'package:blog_preview_card/components/picture_avatar.dart';
import 'package:flutter/material.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: shadowColor, offset: Offset(8, 8))
              ],
              color: cardColor,
              border: Border.all(width: 1.0, color: shadowColor),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          constraints:
              BoxConstraints(maxWidth: screenWidth >= breakpoint ? 384 : 327),
          padding: const EdgeInsets.all(23),
          margin: const EdgeInsets.all(24),
          child: IntrinsicHeight(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Illustration(
                    asset: "assets/images/illustration-article.svg",
                    semanticsLabel: "Avatar picture",
                    height: screenWidth >= 327 ? null : 200,
                  ),
                  const SizedBox(height: 24),
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
                            fontSize: screenWidth >= breakpoint ? 14 : 12,
                            color: headerColor),
                        textDirection: TextDirection.ltr,
                      )),
                  const SizedBox(height: 12),
                  Text(
                    "Published 21 Dec 2023",
                    style: TextStyle(
                        fontSize: screenWidth >= breakpoint ? 14 : 12,
                        fontWeight: fwMedium,
                        height: lh,
                        color: headerColor),
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "HTML & CSS foundations",
                    style: TextStyle(
                        fontSize: screenWidth >= breakpoint ? 24 : 20,
                        fontWeight: fwExtraBold,
                        height: lh,
                        color: headerColor),
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "These languages are the backbone of every website, defining structure, content and presentation",
                    style: TextStyle(
                        fontSize: screenWidth >= breakpoint ? 16 : 14,
                        fontWeight: fwMedium,
                        height: lh,
                        color: const Color.fromRGBO(107, 107, 107, 1)),
                    textDirection: TextDirection.ltr,
                  ),
                  const SizedBox(height: 22),
                  const PictureAvatar(
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
    );
  }
}
