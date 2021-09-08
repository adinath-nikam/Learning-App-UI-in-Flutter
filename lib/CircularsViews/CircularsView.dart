import 'package:brain/CustomWidgets/CustomCarouselSlider.dart';
import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgets/AppBar.dart';
import '../colors/colors.dart';

class CircularsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: CircularsViewContent()),
      ),
    );
  }
}

class CircularsViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CustomAppBar(
              context: context,
              MainTitle: "Notespedia",
              SubTitle: "Educate to Elevate",
              ShowClickIcon: false),
          CustomCarouselSlider(EnlargeCenterCard: false, InfiniteScroll: false),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search by name, city...",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.all(15.0),
                border: new OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                fillColor: PrimaryDarkColor.withOpacity(0.1),
              ),
            ),
          ),
          CircularsSection(context),
          CircularsSection(context),
          WarningCard(context),
        ],
      ),
    );
  }


  Widget CircularsSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
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
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                        height: 10,
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
                            softWrap: true,
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
    );
  }
}
