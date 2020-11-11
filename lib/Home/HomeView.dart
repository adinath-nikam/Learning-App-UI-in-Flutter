import 'package:brain/AboutViews/AboutUsVIew.dart';
import 'package:brain/CollegesViews/CollegesView.dart';
import 'package:brain/CustomWidgets/CustomCarouselSlider.dart';
import 'package:brain/Home/GreetingRow.dart';
import 'package:brain/LibraryViews/LibraryView.dart';
import 'package:brain/NewsViews/NewsView.dart';
import 'package:brain/ScholarshipsViews/ScholarshipsView.dart';
import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:brain/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../CustomWidgets/AppBar.dart';
import 'CircularsCards.dart';
import 'NewsCards.dart';
import 'SideDivider.dart';
import '../WorkViews/WorkView.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: PrimaryWhiteColor,
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
          CustomCarouselSlider(EnlargeCenterCard: true, InfiniteScroll: true),
          SizedBox(
            height: 15,
          ),
          GreetingRow(),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
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
                        CardPadding: 0.0),
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
                    ActivityName: CollegesView(),
                    context: context,
                    CardWidth: 60),
                SizedBox(
                  width: 10,
                ),
                ExploreCards(
                    ImgUrl:
                        "https://cdn.iconscout.com/icon/premium/png-128-thumb/work-experience-2100868-1762839.png",
                    ActivityName: WorkView(),
                    context: context,
                    CardWidth: 60),
                SizedBox(
                  width: 10,
                ),
                ExploreCards(
                    ImgUrl:
                        "https://cdn.iconscout.com/icon/premium/png-256-thumb/newspaper-1956438-1650643.png",
                    ActivityName: NewsView(),
                    context: context,
                    CardWidth: 60),
                SizedBox(
                  width: 10,
                ),
                ExploreCards(
                  ImgUrl:
                      "https://image.freepik.com/free-vector/cartoon-books-bulb-school-graphic_24877-17211.jpg",
                  ActivityName: ScholarshipsView(),
                  context: context,
                  CardWidth: 60,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SideDivider("Government Circulars",
              "Get the latest circulars from government, in this app"),
          CircularsSection(context),
          SizedBox(
            height: 10,
          ),
          SideDivider(
              "InSights", "Get Latest Updates and News of Education Industry."),
          NewsSection(context),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 15,
            thickness: 1,
          ),
          WarningCard(context),
        ],
      ),
    );
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
}
