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
            Text(
              'Mohamed\nSoliman',
              style: GoogleFonts.oswald(
                  color: kDangerColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  height: 1.3),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'High level experience in app design and development knowledge, producing quality work',
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
                  color: kPrimaryColor1,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: TextButton(
                  onPressed: null,
                  child: Text(
                    'CONTACT ME',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      image: Container(
        child: Image.asset(
          'images/2.png',
          fit: BoxFit.contain,
        ),
      )),
);
