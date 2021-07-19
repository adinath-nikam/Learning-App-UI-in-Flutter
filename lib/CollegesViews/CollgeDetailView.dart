import 'package:brain/CustomWidgets/AppBar.dart';
import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:brain/colors/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://www.mlbpbgm.com/wp-content/uploads/2016/03/slidenew2-940x310.jpg',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class CollegeDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: CollegeDetailsContent()),
      ),
    );
  }
}

class CollegeDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        Column(children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
            ),
            items: imgList
                .map(
                  (item) => Container(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                )
                .toList(),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Motichand Lengade Bharatesh Polytechnic",
                    style: TextStyle(
                        color: PrimaryDarkColor,
                        fontFamily: "ProductSans-Bold",
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.verified_user,
                        size: 18,
                        color: PrimaryDarkColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "AICTE",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "ProductSans-Bold",
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.school,
                        size: 18,
                        color: PrimaryDarkColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "AIDED",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "ProductSans-Bold",
                            color: PrimaryDarkColor.withOpacity(0.5)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                        fontFamily: "ProductSans-Regular",
                        fontSize: 16,
                        color: PrimaryDarkColor.withOpacity(0.5)),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: PrimaryDarkColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "150,000 - 250,000",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "ProductSans-Regular",
                            color: PrimaryDarkColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        size: 18,
                        color: PrimaryDarkColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "New York City, NY, USA",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "ProductSans-Regular",
                            color: PrimaryDarkColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.alternate_email,
                        size: 18,
                        color: PrimaryDarkColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "college@mail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "ProductSans-Regular",
                            color: PrimaryDarkColor.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 6.0,
                    children: <Widget>[
                      chip('Computer Science', 'CS', Color(0xFFff8a65)),
                      chip('Mechanical Engineering', 'ME', Color(0xFF4fc3f7)),
                      chip('Electronics Engineering', 'EC', Color(0xFF9575cd)),
                      chip('Electrical Engineering', 'EE', Color(0xFF4db6ac)),
                      chip('Civil Engineering', 'CE', Color(0xFF5cda65)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: PrimaryDarkColor,
                      textColor: PrimaryWhiteColor,
                      child: Text(
                        "Visit College Website",
                        style: TextStyle(fontFamily: "ProductSans-Bold"),
                      ),
                    ),
                  ),
                  WarningCard(context),
                ],
              ))
        ]),
        AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: PrimaryWhiteColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        )
      ],
    ));
  }

  Widget chip(String label, String labelCode, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(5.0),
//      avatar: CircleAvatar(
//        backgroundColor: PrimaryWhiteColor,
//        child: Text(labelCode.toUpperCase()),
//      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
    );
  }
}
