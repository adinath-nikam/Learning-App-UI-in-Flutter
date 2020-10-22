import 'package:brain/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'colors/colors.dart';

class LibraryView extends StatefulWidget {
  @override
  _LibraryViewState createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView>
    with AutomaticKeepAliveClientMixin<LibraryView> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(context: context, MainTitle: "Brain", SubTitle: "Library's stuff, learn and grow", ShowClickIcon: false),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TabBar(
                  unselectedLabelColor: PrimaryDarkColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: PrimaryDarkColor),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: PrimaryDarkColor, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Theory",
                            style: TextStyle(fontFamily: "ProductSans-Bold"),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: PrimaryDarkColor, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Lab",
                            style: TextStyle(fontFamily: "ProductSans-Bold"),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:
                                Border.all(color: PrimaryDarkColor, width: 1)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "QPs",
                            style: TextStyle(fontFamily: "ProductSans-Bold"),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                children: [
                  SingleChildScrollView(child: TheoryView()),
                  SingleChildScrollView(child: LabView()),
                  SingleChildScrollView(child: QpView()),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

Widget BookItem(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: PrimaryDarkColor, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Opacity(
                          opacity: 0.5,
                          child: Image(
                            image: NetworkImage(
                                "https://img2.pngio.com/computer-icons-book-clip-art-books-png-icon-blue-transparent-png-book-icon-blue-png-1462_1369.png"),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5,),
                  Text(
                    "Book Title",
                    style: TextStyle(fontSize: 16, fontFamily: "ProductSans-Bold", color: PrimaryDarkColor),
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Book Author",
                    style: TextStyle(fontSize: 12, fontFamily: "ProductSans-Regular", color: PrimaryDarkColor.withOpacity(0.7)),
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 5,),
                  RatingBarIndicator(
                    rating: 3.5,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: PrimaryDarkColor,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(height: 20, thickness: 1,)
      ],
    )
  );
}


class TheoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BookItem(context),
          BookItem(context),
        ],
      ),
    );
  }
}

class LabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BookItem(context),
          BookItem(context),
          BookItem(context),
          BookItem(context),
        ],
      ),
    );
  }
}

class QpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          BookItem(context),
          BookItem(context),
          BookItem(context),
          BookItem(context),
        ],
      ),
    );
  }
}

