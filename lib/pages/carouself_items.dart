import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harufolio/models/carousel_item_model.dart';
import 'package:harufolio/util/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
      text: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'FLUTTER DEVELOPER',
              style: GoogleFonts.oswald(
                  color: kPrimaryColor1,
                  fontWeight: FontWeight.w900,
                  fontSize: 16),
            ),
            SizedBox(
              height: 18,
            ),
            // Text(
            //   'Hey, I\'m', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
            //   style: GoogleFonts.oswald(
            //       color: Colors.black,
            //       fontWeight: FontWeight.w900,
            //       fontSize: 40,
            //       height: 1.3),
            // ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      'Hey, I\'m', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
                  style: GoogleFonts.oswald(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 45,
                      height: 1.3,
                      letterSpacing: 1.2),
                ),
                TextSpan(
                  text:
                      ' Soliman', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
                  style: GoogleFonts.oswald(
                      color: kDangerColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 45,
                      height: 1.3,
                      letterSpacing: 1.2),
                ),
              ]),
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text:
                      'a', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
                  style: GoogleFonts.oswald(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      height: 1.3),
                ),
                TextSpan(
                  text:
                      ' self-taught', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
                  style: GoogleFonts.oswald(
                      color: kDangerColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      height: 1.3),
                ),
                TextSpan(
                  text:
                      ' flutter developer', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
                  style: GoogleFonts.oswald(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      height: 1.3),
                ),
              ]),
            ),
            Text(
              '& designer/illustrator.', //Hey, I\'m Soliman\na self-taught designer/illustrator & flutter developer
              style: GoogleFonts.oswald(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  height: 1.3),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'High level experience in app design and development',
              style: GoogleFonts.oswald(
                  color: kCaptionColor, height: 1.0, fontSize: 18),
            ),
            Text(
              'knowledge, producing quality work',
              style: GoogleFonts.oswald(
                  color: kCaptionColor, height: 1.0, fontSize: 18),
            ),
            // Container(
            //   child: Wrap(
            //     children: [
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 25,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration: BoxDecoration(
                  color: kDangerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: TextButton(
                  onPressed: null,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'See my work',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      image: Container(
        child: Image.asset(
          'images/4.png',
          fit: BoxFit.contain,
        ),
      )),
);
