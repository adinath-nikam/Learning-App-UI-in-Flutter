import 'package:brain/CustomWidgets/CustomCarouselSlider.dart';
import 'package:brain/ScholarshipsViews/ScholarshipDetailView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../CustomWidgets/AppBar.dart';
import '../AboutViews/TC&WarningCard.dart';
import '../colors/colors.dart';

class ScholarshipsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryWhiteColor,
        body: SingleChildScrollView(child: ScholarshipsViewContent()),
      ),
    );
  }
}

class ScholarshipsViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomAppBar(
              context: context,
              MainTitle: "Brain",
              SubTitle: "Educate to Elevate",
              ShowClickIcon: false),
          CustomCarouselSlider(EnlargeCenterCard: false, InfiniteScroll: false),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Latest Scholarships",
                  style: TextStyle(
                      fontFamily: "ProductSans-Bold",
                      fontSize: 20,
                      color: PrimaryDarkColor),
                ),
                Icon(
                  Icons.filter_list,
                  color: PrimaryDarkColor,
                )
              ],
            ),
          ),
          ScholarshipCardItem(context),
          ScholarshipCardItem(context),
          ScholarshipCardItem(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              height: 50,
              thickness: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Upcoming Scholarships",
                  style: TextStyle(
                      fontFamily: "ProductSans-Bold",
                      fontSize: 20,
                      color: PrimaryDarkColor),
                ),
              ],
            ),
          ),
          Container(
            height: 130,
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ScholarshipCardItem(context),
                ScholarshipCardItem(context),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          TermsConditions(context),
          WarningCard(context)
        ],
      ),
    );
  }

  Widget ScholarshipCardItem(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScholarshipDetailView()));
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Scholarship Name",
                        style: TextStyle(
                            fontFamily: "ProductSans-Bold",
                            fontSize: 18,
                            color: PrimaryDarkColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Deadline 31, Jan 2020",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 14,
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      ),
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
}
