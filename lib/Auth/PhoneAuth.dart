import 'package:brain/colors/ProfileBuildView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/colors.dart';

class PhoneAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: "ProductSans-Bold",
                    color: PrimaryDarkColor,
                  ),
                ),
                Text(
                  "Verify your Phone Number, to Get Started!",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "ProductSans-Regular",
                    color: PrimaryDarkColor,
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "One Time Password will be sent to this phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "ProductSans-Regular",
                    color: PrimaryDarkColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "+91",
                      prefixIcon: Icon(Icons.phone),
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
                  height: 120,
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
                    RaisedButton(
                      child: Text(
                        "Get OTP",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "ProductSans-Bold",
                        ),
                      ),
                      color: PrimaryDarkColor,
                      textColor: PrimaryWhiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileBuidView()));
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
