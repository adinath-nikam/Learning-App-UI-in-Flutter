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
              MainTitle: "Brain",
              SubTitle: "Educate to Elevate",
              ShowClickIcon: false),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Image(
              fit: BoxFit.fitWidth,
              height: 250,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1574021528581-1afbc2d551d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text(
              "News Title",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  color: PrimaryDarkColor,
                  fontSize: 22),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "26 Jan, 2020 - 3:05 PM",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor.withOpacity(0.5),
                  fontSize: 12),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
