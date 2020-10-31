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
              MainTitle: "Brain",
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
                "https://images.unsplash.com/photo-1559827291-72ee739d0d9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=968&q=80",
                fit: BoxFit.cover,
                height: 100,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
