import 'package:flutter/material.dart';
import 'package:harufolio/pages/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'util/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          canvasColor: kBackgroundColor,
          textTheme: GoogleFonts.latoTextTheme()),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.resize(2460, name: "4k"),
        ],
        background: Container(
          color: kBackgroundColor,
        ),
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
