import 'package:brain/WorkViews/WorkDetailView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/AppBar.dart';
import '../LibraryViews/LibraryView.dart';
import '../colors/colors.dart';

class WorkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryWhiteColor,
        appBar: CustomAppBar(
            context: context,
            MainTitle: "Brain",
            SubTitle: "Educate to Elevate",
            ShowClickIcon: true),
        body: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TabBar(
                    unselectedLabelColor: PrimaryDarkColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: PrimaryDarkColor),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: PrimaryDarkColor, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Internships",
                              style: TextStyle(fontFamily: "ProductSans-Bold"),
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: PrimaryDarkColor, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Jobs",
                              style: TextStyle(fontFamily: "ProductSans-Bold"),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: TabBarView(
                  children: [
                    SingleChildScrollView(child: WorkViewContent()),
                    SingleChildScrollView(child: WorkViewContent()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WorkViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CarouselSlider(
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
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 8),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              )),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Best match for your profile",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  fontSize: 20,
                  color: PrimaryDarkColor),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InternshipCardItem(context),
          InternshipCardItem(context),
          InternshipCardItem(context),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Top internships providers",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  fontSize: 20,
                  color: PrimaryDarkColor),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                CompaniesCardItem(
                    "https://cdn.freebiesupply.com/images/large/2x/google-logo-transparent.png"),
                CompaniesCardItem(
                    "https://conferences.recruitingdaily.com/wp-content/uploads/sites/12/2017/06/Microsoft-logo-6.png"),
                CompaniesCardItem(
                    "https://www.designyourway.net/blog/wp-content/uploads/2018/12/apple-logo-700x368.jpg"),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TermsConditions(context),
        ],
      ),
    );
  }

  Widget InternshipCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkDetailView()));
    },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side:
                  BorderSide(color: PrimaryDarkColor.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Internship Name",
                        style: TextStyle(
                            fontFamily: "ProductSans-Bold",
                            fontSize: 18,
                            color: PrimaryDarkColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Duration 3 Months",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 14,
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: PrimaryDarkColor,
                            size: 18,
                          ),
                          Text(
                            "Belgaum, KA",
                            style: TextStyle(
                                fontFamily: "ProductSans-Regular", fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 80,
                    width: 80,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget CompaniesCardItem(String ImgUrl) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            side:
                BorderSide(width: 1, color: PrimaryDarkColor.withOpacity(0.3))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
            image: NetworkImage(ImgUrl),
          ),
        ),
      ),
    );
  }

  Widget TermsConditions(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: PrimaryDarkColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Privacy Policy",
            style: TextStyle(
                fontFamily: "ProductSans-Regular", color: PrimaryDarkColor),
          ),
          Icon(
            Icons.info,
            color: PrimaryDarkColor.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
