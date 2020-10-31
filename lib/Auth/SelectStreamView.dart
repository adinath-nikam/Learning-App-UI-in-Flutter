import 'package:brain/Home/HomeView.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class SelectStreamView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SelectStreamContent(),
      ),
    );
  }
}

class SelectStreamContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Items item1 = new Items(
        title: "COMPUTER",
        img: Icon(
          Icons.computer,
          color: PrimaryDarkColor,
          size: 50,
        ));

    Items item2 = new Items(
      title: "MECHANICAL",
      img: Icon(
        Icons.settings,
        color: PrimaryDarkColor,
        size: 50,
      ),
    );
    Items item3 = new Items(
      title: "ELECTRICAL",
      img: Icon(
        Icons.flash_on,
        color: PrimaryDarkColor,
        size: 50,
      ),
    );
    Items item4 = new Items(
      title: "ELECTRONICS",
      img: Icon(
        Icons.power_settings_new,
        color: PrimaryDarkColor,
        size: 50,
      ),
    );
    Items item5 = new Items(
      title: "AUTOMOBILE",
      img: Icon(
        Icons.directions_car,
        color: PrimaryDarkColor,
        size: 50,
      ),
    );
    Items item6 = new Items(
      title: "CIVIL",
      img: Icon(
        Icons.location_city,
        color: PrimaryDarkColor,
        size: 50,
      ),
    );
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];
    Color color = PrimaryDarkColor.withOpacity(0.2);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeView()));
      },
      child: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Select your stream!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "ProductSans-Bold",
                      color: PrimaryDarkColor),
                ),
                Text(
                  "Select your stream, to get personalized study material",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "ProductSans-Regular",
                      color: PrimaryDarkColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: GridView.count(
                      childAspectRatio: 1.0,
                      padding: EdgeInsets.only(left: 25, right: 25),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5,
                      children: myList.map((data) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(14)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              data.img,
                              SizedBox(
                                height: 10,
                              ),
                              Text(data.title,
                                  style: TextStyle(
                                      color: PrimaryDarkColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        );
                      }).toList()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Items {
  String title;
  Icon img;

  Items({this.title, this.img});
}
