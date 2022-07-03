import 'package:flutter/material.dart';

class ScreenHelper extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  ScreenHelper({Key? key, this.desktop, this.mobile, this.tablet})
      : super(key: key);
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800.0;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800.0 &&
      MediaQuery.of(context).size.width < 1200.0;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200.0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth >= 1200) {
        return desktop!;
      } else if (constrains.maxWidth >= 800 && constrains.maxWidth < 1200) {
        return tablet!;
      } else {
        return mobile!;
      }
    });
  }
}
