import 'package:brain/CustomWidgets/AppBar.dart';
import 'package:brain/AboutViews/TC&WarningCard.dart';
import 'package:brain/colors/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'http://klescet.ac.in/wp-content/uploads/2021/05/ColgEntrance.png',
  'https://storage.googleapis.com/ezap-prod/colleges/5299/kle-dr-m-s-sheshgiri-college-of-engineering-and-technology-campus.jpg',
  'https://cache.careers360.mobi/media/presets/720X480/colleges/social-media/media-gallery/2131/2018/7/25/KLE-Dr.-MS-Sheshgiri-College-of-Engineering-and-Technology-Belgaum-(14).jpg',
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
                    "KLE, DR. M.S Sheshgiri College of Engineering",
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
                    "KLE DR.M S Sheshgiri College of Engineering and Technology, Belagavi belongs to KLE Society, a society which has a legacy of 102 years in the field of Education and is one of the largest education societies in the Asia continent.Established in the year 1979, KLE DR.MSSCET is a Self-financing, Non-Autonomous and an ISO 9001:2015 Certified Institution approved by AICTE, New Delhi and Permanently Affiliated to Visvesvaraya Technological University, Belagavi. All the Seven B. E. Courses (Civil, Mechanical, E & E, E & C, CSE, Chemical and Biomedical Engineering) are accredited by National Board of Accreditation (NBA), New Delhi.",
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
                        Icons.attach_money,
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
                        Icons.location_on,
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
                        "kledrmsscet@kle.com",
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
