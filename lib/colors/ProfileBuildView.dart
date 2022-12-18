import 'package:brain/Auth/SelectStreamView.dart';
import 'package:brain/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBuidView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProfileBuildForm(),
      ),
    );
  }
}

class ProfileBuildForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Complete your profile!",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                fontFamily: "ProductSans-Bold",
                color: PrimaryDarkColor),
          ),
          Text(
            "Complete your profile to get personalized content",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                fontFamily: "ProductSans-Regular",
                color: PrimaryDarkColor),
          ),
          SizedBox(
            height: 20,
          ),
          ////////////////////////////////// --------------> Username
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.person_outline),
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
          SizedBox(
            height: 20,
          ),
          ////////////////////////////////// --------------> Email
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.mail_outline),
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
          SizedBox(
            height: 20,
          ),
          ////////////////////////////////// --------------> Colllege
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Where you study'n ?",
                prefixIcon: Icon(Icons.school),
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
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "By Signing in,\nyou agree to our Terms and Conditions.",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "ProductSans-Regular",
                  color: PrimaryDarkColor,
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Verify OTP",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "ProductSans-Bold",
                    color: PrimaryWhiteColor
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: PrimaryDarkColor,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SelectStreamView()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
