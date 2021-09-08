import 'package:brain/colors/colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../CircularsViews/CircularsView.dart';

Widget CircularsSection(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                    color: PrimaryDarkColor.withOpacity(0.5), width: 1)),
            child: Column(
              children: <Widget>[
                Image.network(
                  "https://ctri.org.in/wp-content/uploads/2019/09/VTU-Result.png",
                  fit: BoxFit.cover,
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ExpandablePanel(
                    header: Text(
                      "Circular - UG (Odd) Results",
                      style: TextStyle(
                          fontSize: 18,
                          color: PrimaryDarkColor,
                          fontFamily: "ProductSans-Bold"),
                    ),
                    collapsed: Text(
                      "VTU - UG (Odd) Semester Results Out Can Check Here..",
                      style: TextStyle(
                          fontSize: 14,
                          color: PrimaryDarkColor,
                          fontFamily: "ProductSans-Regular"),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      children: <Widget>[
                        Text(
                          "VTU - UG (Odd) Semester i.e. 1, 3, 5 & 7 Sem Results Out Can Check Here at 'www.vturesults.ac.in'",
                          style: TextStyle(
                              fontSize: 14,
                              color: PrimaryDarkColor,
                              fontFamily: "ProductSans-Regular"),
                          textAlign: TextAlign.justify,
                          softWrap: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: RaisedButton(
                            onPressed: () {},
                            color: PrimaryDarkColor,
                            textColor: PrimaryWhiteColor,
                            child: Text(
                              "View Official Circular",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "ProductSans-Regular"),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        )
                      ],
                    ),
                    tapHeaderToExpand: true,
                    hasIcon: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CircularsView()));
        },
        child: Text(
          "View all Circulars...",
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
