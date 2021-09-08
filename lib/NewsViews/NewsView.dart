import 'package:brain/CustomWidgets/AppBar.dart';
import 'package:brain/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewsView extends StatefulWidget {
  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          NewsContent(),
          NewsContent(),
          NewsContent(),
        ],
      )),
    );
  }
}

class NewsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CustomAppBar(
              context: context,
              MainTitle: "Notespedia",
              SubTitle: "Educate to Elevate",
              ShowClickIcon: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Image(
              fit: BoxFit.fitWidth,
              height: 250,
              image: NetworkImage(
                  "https://image.cnbcfm.com/api/v1/image/106927555-1629028236316-gettyimages-1234688073-AFP_9L67WR.jpeg?v=1629028310&w=929&h=523"),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text(
              "TALIBAN Captured Kabul, Afghanistan Lost Democracy..",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  color: PrimaryDarkColor,
                  fontSize: 22),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "15 Aug, 2021 - 3:05 PM",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor.withOpacity(0.5),
                  fontSize: 12),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "he Taliban have taken control of the presidential palace in Kabul after former President Ashraf Ghani fled the country."
                  "\nThe US defense secretary approved 1,000 more US troops into Afghanistan due to the deteriorating security situation, a defense official tells CNN, for a total of 6,000 US troops that will be in the country soon.\nEarlier today, the US completed the evacuation of its embassy in Afghanistan and took down the American flag at the diplomatic compound.",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor,
                  fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor,
                  fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: chip("VERIFIED", Colors.green))
        ],
      ),
    );
  }

  Widget chip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      avatar: CircleAvatar(
        radius: 15,
        backgroundColor: PrimaryWhiteColor,
        child: Icon(
          Icons.verified_user,
          size: 20,
        ),
      ),
      label: Text(
        label,
        style: TextStyle(
            fontFamily: "ProductSans-Bold", color: Colors.white, fontSize: 12),
      ),
      backgroundColor: color,
      elevation: 0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(5.0),
    );
  }
}
