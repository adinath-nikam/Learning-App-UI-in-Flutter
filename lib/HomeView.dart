import 'package:brain/AboutUsVIew.dart';
import 'package:brain/CollegesView.dart';
import 'package:brain/LibraryView.dart';
import 'package:brain/colors/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:brain/CollgeDetailView.dart';

import 'AppBar.dart';
import 'WorkView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(child: HomeContent()),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CustomAppBar(
              context: context,
              MainTitle: "Brain",
              SubTitle: "Educate to Elevate",
              Activity: AboutUsView(),
              ShowClickIcon: true),
          CarouselSlider(
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: PrimaryDarkColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          '$i',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: "ProductSans-Bold",
                              color: PrimaryWhiteColor),
                        )));
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 150,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 8),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
          SizedBox(
            height: 15,
          ),
          Container(
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
                            "https://cdn0.iconfinder.com/data/icons/connection/512/icon-6.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Hello, Unknown",
                          style: TextStyle(
                              fontFamily: "ProductSans-Bold",
                              color: PrimaryDarkColor,
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ExploreCards(
                        ImgUrl:
                            "https://image.freepik.com/free-vector/stack-colorful-books-learning-knowledge-wisdom-illustration-flat-style_120968-95.jpg",
                        ActivityName: LibraryView(),
                        context: context,
                        CardWidth: 170,
                        CardPadding: 0.0),
                    ExploreCards(
                        ImgUrl:
                            "https://image.freepik.com/free-vector/business-team-competition-achievement-successful-challenge-business-concept-illustration_114835-108.jpg",
                        ActivityName: CollegesView(),
                        context: context,
                        CardWidth: 170,
                        CardPadding: 0.0)
                  ],
                ),
              ],
            ),
          ),
          SideDivider("Explore", "Demo Text"),
          Container(
            height: 80,
            margin: EdgeInsets.only(left: 15, top: 10),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                ExploreCards(
                    ImgUrl:
                        "https://cdn0.iconfinder.com/data/icons/small-color-v28/512/building_college_elementary_school_university-512.png",
                    ActivityName: WorkView(),
                    context: context,
                    CardWidth: 60),
                SizedBox(
                  width: 10,
                ),
                ExploreCards(
                    ImgUrl:
                        "https://cdn.iconscout.com/icon/premium/png-128-thumb/work-experience-2100868-1762839.png",
                    ActivityName: CollegesView(),
                    context: context,
                    CardWidth: 60),
                SizedBox(
                  width: 10,
                ),
                ExploreCards(
                    ImgUrl:
                        "https://cdn.iconscout.com/icon/premium/png-256-thumb/newspaper-1956438-1650643.png",
                    ActivityName: CollegeDetailView(),
                    context: context,
                    CardWidth: 60),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SideDivider("Government Circulars",
              "Get the latest circulars from government, in this app"),
          Column(
            children: <Widget>[
              CircularsSection(context),
              Text(
                "View all Circulars...",
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 12,
                    color: Colors.lightBlue),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SideDivider(
              "InSights", "Get Latest Updates and News of Education Industry."),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                NewsSection(),
                NewsSection(),
                Text(
                  "View all InSights...",
                  style: TextStyle(
                      fontFamily: "ProductSans-Regular",
                      fontSize: 12,
                      color: Colors.lightBlue),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget CircularsSection(BuildContext context) {
    return Padding(
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

  Widget NewsSection() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
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
                        "News Title aaaaaaaaaaaa aaa aaaaa aaaaaaaaaaaa",
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
        ));
  }

  Widget ExploreCards({
    @required String ImgUrl,
    @required Widget ActivityName,
    @required BuildContext context,
    @required double CardWidth,
    double CardPadding,
  }) {
    if (CardPadding == null) CardPadding = 10;

    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ActivityName));
        },
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  width: 1, color: PrimaryDarkColor.withOpacity(0.5))),
          child: Padding(
            padding: new EdgeInsets.all(CardPadding),
            child: Image(
              width: CardWidth,
              fit: BoxFit.cover,
              image: NetworkImage(
                ImgUrl,
              ),
            ),
          ),
        ));
  }

  Widget SideDivider(var title, var description) {
    GlobalKey _toolTipKey = GlobalKey();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: 20,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  VerticalDivider(color: PrimaryDarkColor, thickness: 5),
                  Text(
                    title,
                    style:
                        TextStyle(fontSize: 18, fontFamily: "ProductSans-Bold"),
                  ),
                ],
              )),
          GestureDetector(
            onTap: () {
              final dynamic tooltip = _toolTipKey.currentState;
              tooltip.ensureTooltipVisible();
            },
            child: new Tooltip(
                key: _toolTipKey,
                message: description,
                preferBelow: false,
                padding: EdgeInsets.all(8.0),
                showDuration: Duration(seconds: 5),
                child: Icon(
                  Icons.info,
                  size: 20,
                  color: PrimaryDarkColor.withOpacity(0.3),
                )),
          ),
        ],
      ),
    );
  }
}
