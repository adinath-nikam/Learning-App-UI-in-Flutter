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
              MainTitle: "Notespedia",
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
          ScholarshipCardItem(context, "Google Scholarship", "Deadline 31 Dec, 2021","https://e7.pngegg.com/pngimages/543/934/png-clipart-google-app-logo-google-logo-g-suite-google-text-logo.png"),
          ScholarshipCardItem(context, "Tata Scholarship", "Deadline 1 Nov, 2021","https://listcarbrands.com/wp-content/uploads/2017/10/Tata-Motors-Logo.png"),
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
                ScholarshipCardItem(context, "Microsoft Scholarship", "N/A","https://www.eecmyanmar.com/wp-content/uploads/2018/03/Microsoft-Logo-icon-png-Transparent-Background.png"),
                ScholarshipCardItem(context, "TCS Scholarship", "N/A","https://i2.wp.com/orissadiary.com/wp-content/uploads/2021/03/TCS.jpg?fit=400%2C400&ssl=1"),
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

  Widget ScholarshipCardItem(BuildContext context, String ScholarshipTitle, String ScholarshipDeadline, String ScholarshipImgUrl) {
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
                        ScholarshipTitle,
                        style: TextStyle(
                            fontFamily: "ProductSans-Bold",
                            fontSize: 18,
                            color: PrimaryDarkColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ScholarshipDeadline,
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 14,
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                  Image(
                    image: NetworkImage(ScholarshipImgUrl),
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
