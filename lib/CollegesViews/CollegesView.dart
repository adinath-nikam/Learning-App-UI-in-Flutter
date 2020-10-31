import 'package:brain/CustomWidgets/AppBar.dart';
import 'package:brain/CollegesViews/CollgeDetailView.dart';
import 'package:brain/CustomWidgets/CustomCarouselSlider.dart';
import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class CollegesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: CollegesList()),
      ),
    );
  }
}

class CollegesList extends StatelessWidget {
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
          CustomCarouselSlider(EnlargeCenterCard: true, InfiniteScroll: true),
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
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 5, top: 10),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[


                CityItem(context: context, CityName: "Belgaum", ActivityName: CollegeDetailView()),
                CityItem(context: context, CityName: "Banglore", ActivityName: CollegeDetailView()),
                CityItem(context: context, CityName: "Mysore", ActivityName: CollegeDetailView()),
                CityItem(context: context, CityName: "Hubali", ActivityName: CollegeDetailView()),
                CityItem(context: context, CityName: "Uttar Kannada", ActivityName: CollegeDetailView()),


              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Top 10 Colleges in Belgaum",
            style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 16),
          ),
          SizedBox(height: 10,),
          CollegeListItem(),
          CollegeListItem(),
          CollegeListItem(),
          CollegeListItem(),
          TermsConditions(context),
          WarningCard(context)
        ],
      ),
    );
  }

  Widget CollegeListItem() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
            side:
                BorderSide(width: 1, color: PrimaryDarkColor.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    side: BorderSide(
                        width: 1, color: PrimaryDarkColor.withOpacity(0.2))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    width: 60,
                    image: NetworkImage(
                      "https://image.flaticon.com/icons/png/128/167/167707.png",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "College Name",
                      style: TextStyle(
                          fontFamily: "ProductSans-Bold", fontSize: 16),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Approved by: AICTE",
                          style: TextStyle(
                              fontFamily: "ProductSans-Regular", fontSize: 12),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Type: Aided",
                          style: TextStyle(
                              fontFamily: "ProductSans-Regular", fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CityItem({BuildContext context, Widget ActivityName, String CityName}){
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ActivityName));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.0),
              side: BorderSide(
                  width: 1,
                  color: PrimaryDarkColor.withOpacity(0.2))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              CityName,
              style: TextStyle(
                  fontFamily: "ProductSans-Bold", fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

}
