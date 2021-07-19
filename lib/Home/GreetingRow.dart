import 'package:brain/colors/colors.dart';
import 'package:flutter/material.dart';

Widget GreetingRow() {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 23,
              backgroundColor: PrimaryDarkColor,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: PrimaryWhiteColor,
                backgroundImage: NetworkImage(
                    "https://img.icons8.com/cotton/2x/gender-neutral-user--v2.png"),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Hello, Adinath",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  color: PrimaryDarkColor,
                  fontSize: 18),
            )
          ],
        ),
      ],
    ),
  );
}
