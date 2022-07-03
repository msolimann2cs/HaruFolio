import 'package:flutter/material.dart';
import 'package:harufolio/util/constants.dart';
import 'package:harufolio/util/globals.dart';
import 'header.dart';
import 'carousel.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title!,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            // style: ButtonStyle(
                            //     textStyle: MaterialStateProperty.all(TextStyle(
                            //         color: Colors.white,
                            //         fontSize: 13,
                            //         fontWeight: FontWeight.bold))),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title!,
                          style: TextStyle(color: kPrimaryColor1),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
            ],
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   static String id = 'home_page';
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var screenHeight = MediaQuery.of(context).size.height;
//     return
//   }
// }

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // TOP BAR ROW
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 170),
          child: Text(
            'Soliman',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 650),
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 35),
          child: Text(
            'About',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 35),
          child: Text(
            'Skills',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 35),
          child: Text(
            'Portfolio',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 35),
          child: Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}

// Container(
// height: 200,
// color: Colors.black,
// child: ListView(
// children: [
// Column(
// children: [
// Container(
// height: screenHeight,
// color: Colors.white,
// child: Column(
// // MAIN COLUMN
// children: [
// TopBar(),
// Padding(
// padding: const EdgeInsets.only(left: 185.0, top: 150),
// child: Row(
// children: [
// // Expanded(
// //   child: Container(),
// // ),
// Column(
// //mainAxisAlignment: MainAxisAlignment.spaceb,
// //crossAxisAlignment: CrossAxisAlignment.sp,
// children: [
// Icon(Ionicons.logo_linkedin),
// Icon(Ionicons.logo_github),
// ],
// ),
// Column(
// //mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Hi I am Soliman'),
// Text('Flutter developer'),
// Text(
// 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
// style: TextStyle(
// fontSize: 15,
// ),
// ),
// Text(
// 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
// style: TextStyle(
// fontSize: 15,
// ),
// ),
// Text(
// 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
// style: TextStyle(
// fontSize: 15,
// ),
// ),
// Material(
// elevation: 5.0,
// color: Colors.deepPurple,
// borderRadius: BorderRadius.circular(6.0),
// child: MaterialButton(
// onPressed: null,
// minWidth: 180.0,
// height: 70.0,
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceEvenly,
// children: [
// Text(
// 'Contact Me',
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// Padding(
// padding:
// const EdgeInsets.only(left: 10.0),
// child: Icon(
// Icons.send,
// color: Colors.white,
// ),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// Padding(
// padding: const EdgeInsets.only(left: 120.0),
// child: CircleAvatar(
// backgroundImage: AssetImage('images/1.jpg'),
// backgroundColor: Colors.deepPurple,
// radius: 130,
// ),
// )
// // Expanded(
// //   flex: 3,
// //   child: Icon(Ionicons.logo_linkedin),
// // ),
// ],
// ),
// ),
// // Row(
// //   children: [],
// // )
// ],
// ),
// ),
// Container(
// height: screenHeight,
// color: Colors.green,
// child: TopBar(),
// )
// ],
// ),
// ],
// ),
// );
