import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:harufolio/pages/carouself_items.dart';
import 'package:harufolio/util/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);
    return Container(
      height: carouselContainerHeight,
      width: double.infinity,
      //color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                  //autoPlay: true,
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight),
              items: List.generate(
                  5,
                  (index) => Builder(
                        builder: (BuildContext context) {
                          return Container(
                            constraints: BoxConstraints(
                              minHeight: carouselContainerHeight,
                            ),
                            child: ScreenHelper(
                              desktop: _buildDesktop(
                                  context,
                                  carouselItems[index].text!,
                                  carouselItems[index].image!),
                              tablet: _buildTablet(
                                  context,
                                  carouselItems[index].text!,
                                  carouselItems[index].image!),
                              mobile: _buildMobile(
                                  context,
                                  carouselItems[index].text!,
                                  carouselItems[index].image!),
                            ),
                          );
                        },
                      )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: 1000,
      minWidth: 1000,
      defaultScale: false,
      child: Row(
        children: [Expanded(child: text), Expanded(child: image)],
      ),
    ),
  );
}

Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: 760,
      minWidth: 760,
      defaultScale: false,
      child: Row(
        children: [Expanded(child: text), Expanded(child: image)],
      ),
    ),
  );
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.width * .8,
    ),
    width: double.infinity,
    child: text,
  );
}
