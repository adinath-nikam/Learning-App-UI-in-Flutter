import 'package:brain/CollgeDetailView.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors/colors.dart';

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
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                      "Brain",
                      style: TextStyle(
                          fontFamily: "ProductSans-Bold",
                          fontSize: 22,
                          color: PrimaryDarkColor),
                    ),
                    Text(
                      "Search best colleges in your area",
                      style: TextStyle(
                          fontFamily: "ProductSans-Regular",
                          fontSize: 12,
                          color: PrimaryDarkColor),
                    ),
                  ],
                )
              ],
            ),
          ),
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
