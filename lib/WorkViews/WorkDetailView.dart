import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class WorkDetailView extends StatelessWidget {
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
        body: SingleChildScrollView(child: WorkDetailViewContent()),
      ),
    );
  }
}

class WorkDetailViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image(
                image: NetworkImage("https://opportunitydesk.info/wp-content/uploads/2020/03/Google-Summer-Code-Internship-min.jpg"),
                height: 220,
                width: 210,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Google India Internship - 2021",
                style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  fontSize: 22,
                  color: PrimaryDarkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Google",
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 16,
                    color: PrimaryDarkColor.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: PrimaryDarkColor.withOpacity(1),
                    ),
                    child: Text(
                      "Internship + Job Offer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: "ProductSans-Bold",
                          color: PrimaryWhiteColor),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // --

              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: PrimaryDarkColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Hyderabad, Telangana",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "ProductSans-Regular",
                                  color: PrimaryDarkColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.play_circle_filled,
                              color: PrimaryDarkColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text(
                                "START DATE\n11 Dec, 2021",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    fontFamily: "ProductSans-Regular",
                                    color: PrimaryDarkColor),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.date_range,
                              color: PrimaryDarkColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "DURATION\n3 Months",
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "ProductSans-Regular",
                                  color: PrimaryDarkColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              color: PrimaryDarkColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "APPLY BY\n1 Nov, 2021",
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "ProductSans-Regular",
                                  color: PrimaryDarkColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "About Internship",
                style: TextStyle(
                    fontFamily: "ProductSans-Bold",
                    fontSize: 20,
                    color: PrimaryDarkColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Applications are being invited to apply for the Google Summer Internship 2020. Google Summer Code is an International Paid Internship for international students. This Google Internship is a Free International internship for All over the world students.GSOC is a Free Internship For Bachelors Degree Programs, Masters Degree Programs & PhD Degree Programs students belonging to Any Academic Background.Google Internship 2020 will give you a stipend of 6000USD at the end",
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 14,
                    color: PrimaryDarkColor.withOpacity(0.7)),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "About Company",
                style: TextStyle(
                    fontFamily: "ProductSans-Bold",
                    fontSize: 20,
                    color: PrimaryDarkColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Google LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware.",
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 14,
                    color: PrimaryDarkColor.withOpacity(0.7)),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Requirements",
                style: TextStyle(
                    fontFamily: "ProductSans-Bold",
                    fontSize: 20,
                    color: PrimaryDarkColor),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "UG Student From any AICTE Approved University/College.",
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 14,
                    color: PrimaryDarkColor.withOpacity(0.7)),
                textAlign: TextAlign.justify,
              ),


              Divider(height: 50, thickness: 1,)

            ],
          ),
        ),
        // HOrizaontal Recommednation






        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Recommended for you",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "ProductSans-Bold",
                fontSize: 20,
                color: PrimaryDarkColor),
          ),
        ),
        SizedBox(
          height: 2,
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
              InternshipCardItem(context, "https://i1.wp.com/animationvisarts.com/wp-content/uploads/2021/01/IBM-Logo-Design-1972-present.png?fit=1000%2C500&ssl=1"),
              SizedBox(
                width: 2,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget InternshipCardItem(BuildContext context, String InternshipImgUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WorkDetailView()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        child: Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: PrimaryDarkColor.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "IBM Data Science",
                        style: TextStyle(
                            fontFamily: "ProductSans-Bold",
                            fontSize: 14,
                            color: PrimaryDarkColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Duration 3 Months",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 12,
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: PrimaryDarkColor,
                            size: 12,
                          ),
                          Text(
                            "Banglore, KA",
                            style: TextStyle(
                                fontFamily: "ProductSans-Regular",
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  Image(
                    image: NetworkImage(InternshipImgUrl),
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
