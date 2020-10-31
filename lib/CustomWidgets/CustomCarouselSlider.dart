import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

Widget CustomCarouselSlider(
    {@required bool EnlargeCenterCard, @required bool InfiniteScroll}) {
  return CarouselSlider(
      items: [1, 2].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: PrimaryDarkColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  '$i',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "ProductSans-Bold",
                      color: PrimaryWhiteColor),
                )));
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 150,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: InfiniteScroll,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 8),
        autoPlayAnimationDuration: Duration(milliseconds: 1000),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: EnlargeCenterCard,
        scrollDirection: Axis.horizontal,
      ));
}
