import 'package:brain/NewsViews/NewsView.dart';
import 'package:brain/colors/colors.dart';
import 'package:flutter/material.dart';

Widget NewsSection(BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                    color: PrimaryDarkColor.withOpacity(0.5), width: 1)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 250, //** Need to Work on It **
                        child: Text(
                          "News Title Here...",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "ProductSans-Bold"),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "10 hours ago",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "ProductSans-Bold",
                              color: PrimaryDarkColor.withOpacity(0.5)),
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        color: PrimaryDarkColor.withOpacity(0.5),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: "ProductSans-Bold",
                              color: PrimaryWhiteColor),
                          softWrap: true,
                        ),
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    height: 65,
                    width: 65,
                  ),
                ],
              ),
            ),
          )),
      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => NewsView()));
        },
        child: Text(
          "View all InSights...",
          style: TextStyle(
              fontFamily: "ProductSans-Bold",
              fontSize: 12,
              color: Colors.lightBlue),
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}
