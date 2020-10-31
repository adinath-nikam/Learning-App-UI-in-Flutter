import 'package:brain/AboutViews/AboutUsVIew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

Widget WarningCard(BuildContext context){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red[300],
      ),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Be Aware!",
                style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  color: Colors.yellow,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.warning,
                color: Colors.yellow,
                size: 18,
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Warning! Notespedia or anyother third party service with the reference of Notespedia will never call or ask for any extra charges on our service listed in our Terms-of-Services.",
            style: TextStyle(
              fontFamily: "ProductSans-Regular",
              color: Colors.yellow,
              fontSize: 14,
            ),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    ),
  );
}

Widget TermsConditions(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUsView()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: PrimaryDarkColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Terms of Service / Privacy Policy",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold", color: PrimaryDarkColor),
            ),
            Icon(
              Icons.info,
              color: PrimaryDarkColor.withOpacity(0.7),
            )
          ],
        ),
      ),
    ),
  );
}