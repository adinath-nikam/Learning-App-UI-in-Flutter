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
                  "https://images.unsplash.com/photo-1559827291-72ee739d0d9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=968&q=80",
                  fit: BoxFit.cover,
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ExpandablePanel(
                    header: Text(
                      "Circular Title",
                      style: TextStyle(
                          fontSize: 18,
                          color: PrimaryDarkColor,
                          fontFamily: "ProductSans-Bold"),
                    ),
                    collapsed: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
