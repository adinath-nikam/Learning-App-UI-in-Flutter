import 'package:flutter/material.dart';

import 'colors/colors.dart';

Widget CustomAppBar(
    {@required BuildContext context,
    @required String MainTitle,
    @required String SubTitle,
    Widget Activity,
    @required bool ShowClickIcon}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: Container(
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/logo.png"),
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    MainTitle,
                    style: TextStyle(
                        fontFamily: "ProductSans-Bold",
                        fontSize: 22,
                        color: PrimaryDarkColor),
                  ),
                  Text(
                    SubTitle,
                    style: TextStyle(
                        fontFamily: "ProductSans-Regular",
                        fontSize: 12,
                        color: PrimaryDarkColor),
                  ),
                ],
              ),
            ],
          ),

          Container(
            child: (() {
              if (ShowClickIcon == true) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Activity));
                  },
                  child: Icon(
                    Icons.info,
                    color: PrimaryDarkColor.withOpacity(0.7),
                  ),
                );
              } else {
                return SizedBox(
                  width: 10,
                );
              }
            }()),
          )

//            GestureDetector(
//              onTap: () {
//                Navigator.of(context)
//                    .push(MaterialPageRoute(builder: (context) => Activity));
//              },
//              child: Icon(
//                Icons.info,
//                color: PrimaryDarkColor.withOpacity(0.7),
//              ),
//            ),
        ],
      ),
    ),
  );
}
