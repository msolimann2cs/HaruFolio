import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harufolio/util/constants.dart';
import 'package:harufolio/models/header_item.dart';
import 'package:harufolio/util/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:harufolio/util/globals.dart';

List<HeaderItem> headerItems = [
  HeaderItem(
    title: 'HOME',
    onTap: null,
  ),
  HeaderItem(
    title: 'ABOUT',
    onTap: null,
  ),
  HeaderItem(
    title: 'SKILLS',
    onTap: null,
  ),
  HeaderItem(
    title: 'PORFOLIO',
    onTap: null,
  ),
  HeaderItem(
    title: 'CONTACT ME',
    onTap: null,
    isButton: true,
  ),
];

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: buildHeader(),
        ),
        mobile: buildMobileHeader(),
        tablet: buildHeader(),
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(),
            GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState?.openEndDrawer();
              },
              child: Icon(
                Ionicons.menu,
                color: kPrimaryColor1,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          HeaderRow(),
        ],
      ),
    );
  }
}

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: null,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Soliman',
                  style: GoogleFonts.oswald(
                    color: kDangerColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor1,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderRow extends StatelessWidget {
  const HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
      ],
      child: Row(
        children: headerItems
            .map((item) => item.isButton
                ? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kDangerColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: TextButton(
                          onPressed: item.onTap,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              item.title!,
                              style: TextStyle(
                                color: Colors.white, // could be change
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: item.onTap,
                        child: Text(
                          item.title!,
                          style: TextStyle(
                            color: kPrimaryColor1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ))
            .toList(),
      ),
    );
  }
}
