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
                image: AssetImage("assets/images/logo.png"),
                height: 120,
                width: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Google Internship",
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
                              "Belgaum",
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
                                "START DATE\n11 March, 2020",
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
                              "APPLY BY\n31 Dec, 2020",
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
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
              InternshipCardItem(context),
              InternshipCardItem(context),
              InternshipCardItem(context),
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

  Widget InternshipCardItem(BuildContext context) {
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
                        "Internship Name",
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
                            "Belgaum, KA",
                            style: TextStyle(
                                fontFamily: "ProductSans-Regular",
                                fontSize: 12),
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
}
