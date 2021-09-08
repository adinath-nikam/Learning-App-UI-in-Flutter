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
                          "TALIBAN Caputred Afghanistan's Kabul, Lost Democracy....",
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
                          "15 Aug, 21",
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
                          "World",
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
                    image: NetworkImage(
                      "https://cdn.cfr.org/sites/default/files/styles/immersive_image_3_2_desktop_2x/public/image/2020/09/taliban.jpg",
                    ),
                    height: 85,
                    width: 85,
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
