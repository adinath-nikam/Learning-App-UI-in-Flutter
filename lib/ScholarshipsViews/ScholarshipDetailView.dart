import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class ScholarshipDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: PrimaryWhiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: PrimaryDarkColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(child: ScholarshipContentDetailView()),
      ),
    );
  }
}

class ScholarshipContentDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/logo.png"),
            height: 120,
            width: 120,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "TATA Group Scholarship - 2021",
            style: TextStyle(
                fontFamily: "ProductSans-Bold",
                fontSize: 22,
                color: PrimaryDarkColor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "TATA SONS",
            style: TextStyle(
                fontFamily: "ProductSans-Regular",
                fontSize: 14,
                color: PrimaryDarkColor.withOpacity(0.5)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ScholarshipSpecification(
                  icon: Icons.timer,
                  title: "Deadline",
                  SubTitle: "1 Nov, 2021"),
              ScholarshipSpecification(
                  icon: Icons.dashboard, title: "Type", SubTitle: "Private"),
              ScholarshipSpecification(
                  icon: Icons.verified_user,
                  title: "Source",
                  SubTitle: "Verified"),
            ],
          ),
          ScholarshipContentBox(
              title: "About the program",
              SubTitle:
                  "TATA Group Scholarship Programme is an Initiative taken by TATA SONS in the Memory of Late. Shri J.R.D TATA to grant an Fininacial Support to the Students of India Studying in Varying Engineering Universities/Colleges."),
          ScholarshipContentBox(
              title: "Eligibility",
              SubTitle:
                  "Must be a Citizen of Indian, Studying in any of AICTE Approved Engineering College."),
          ScholarshipContentBox(
              title: "Benefits",
              SubTitle:
                  "Financial Support Upto Completion of Engineering in India."),
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
          WarningCard(context)
        ],
      ),
    );
  }

  Widget ScholarshipSpecification(
      {IconData icon, String title, String SubTitle}) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: PrimaryDarkColor,
            size: 30,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 12,
                    color: PrimaryDarkColor.withOpacity(0.7)),
              ),
              Text(
                SubTitle,
                style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget ScholarshipContentBox({String title, String SubTitle}) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: PrimaryDarkColor,
                  fontFamily: "ProductSans-Bold",
                  fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              SubTitle,
              style: TextStyle(
                  color: PrimaryDarkColor.withOpacity(0.7),
                  fontFamily: "ProductSans-Regular",
                  fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              //                    <--- top side
              color: PrimaryDarkColor.withOpacity(0.7),
              width: 15.0,
            ),
            left: BorderSide(
              //                    <--- top side
              color: PrimaryDarkColor.withOpacity(0.7),
              width: 1,
            ),
            right: BorderSide(
              //                    <--- top side
              color: PrimaryDarkColor.withOpacity(0.7),
              width: 1,
            ),
            bottom: BorderSide(
              //                    <--- top side
              color: PrimaryDarkColor.withOpacity(0.7),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }


//  Widget ScholarshipCardItem(BuildContext context) {
//    return GestureDetector(
//      onTap: () {
//        Navigator.of(context).push(
//            MaterialPageRoute(builder: (context) => ScholarshipDetailView()));
//      },
//      child: Container(
//        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
//        child: Card(
//            color: Colors.white,
//            elevation: 0,
//            shape: RoundedRectangleBorder(
//              side: BorderSide(
//                  color: PrimaryDarkColor.withOpacity(0.3), width: 1),
//              borderRadius: BorderRadius.circular(8),
//            ),
//            child: Container(
//              padding: EdgeInsets.all(20),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        "Scholarship Name",
//                        style: TextStyle(
//                            fontFamily: "ProductSans-Bold",
//                            fontSize: 18,
//                            color: PrimaryDarkColor),
//                      ),
//                      SizedBox(
//                        height: 10,
//                      ),
//                      Text(
//                        "Deadline 31, Jan 2020",
//                        style: TextStyle(
//                            fontFamily: "ProductSans-Regular",
//                            fontSize: 14,
//                            color: PrimaryDarkColor.withOpacity(0.5)),
//                      ),
//                    ],
//                  ),
//                  Image(
//                    image: AssetImage("assets/images/logo.png"),
//                    height: 80,
//                    width: 80,
//                  ),
//                ],
//              ),
//            )),
//      ),
//    );
//  }
//}


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
