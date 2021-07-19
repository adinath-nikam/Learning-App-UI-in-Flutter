import 'package:brain/Auth/PhoneAuth.dart';
import 'package:brain/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_button.dart';

class AboutUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: AboutUsContent(),
          ),
        ),
      ),
    );
  }
}

class AboutUsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: PrimaryDarkColor,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Image(
            image: AssetImage("assets/images/logo.png"),
            height: 80,
            width: 80,
          ),
          Text(
            "Brain",
            style: TextStyle(
                fontFamily: "ProductSans-Bold",
                fontSize: 28,
                color: PrimaryDarkColor),
            textAlign: TextAlign.center,
          ),
          Text("Education at it's Best",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  fontSize: 14,
                  color: PrimaryDarkColor),
              textAlign: TextAlign.center),
          SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text('''A Terms and Conditions agreement, also known as a T&C, Terms of Use or Terms of Service, is the legal backbone of the relationship between your mobile app and your users. It sets forth clauses that embody the rules, requirements, restrictions and limitations that a user must agree to in order to use your mobile app.

    It's an incredibly important legal agreement for you to have, regardless of which app distribution platform you're using.

    We'll explain the benefits of having a Terms and Conditions agreement for your mobile app and show you some examples of the most important clauses to include in your agreement.''',
                style: TextStyle(
                    fontFamily: "ProductSans-Regular",
                    fontSize: 14,
                    color: PrimaryDarkColor.withOpacity(0.7)),
                textAlign: TextAlign.justify),
          ),
          Divider(height: 50, thickness: 1,),
          Text("Follow us, We are Everywhere",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  fontSize: 14,
                  color: PrimaryDarkColor),
              textAlign: TextAlign.center),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TwitterLink("https://www.instagram.com/adinath_nikam/"),
              FacebookLink("https://www.instagram.com/adinath_nikam/"),
              InstagramLink("https://www.instagram.com/adinath_nikam/"),
              WhatsappLink("https://www.instagram.com/adinath_nikam/"),
              YouTubeLink("https://www.instagram.com/adinath_nikam/"),
              LinkedInLink("https://www.instagram.com/adinath_nikam/"),
              GithubLink("https://www.instagram.com/adinath_nikam/"),
            ],
          ),

          SizedBox(height: 30,),
          AboutUsButtons(context, "Privacy and Policy", PhoneAuth()),
          AboutUsButtons(context, "Terms and Conditions", PhoneAuth()),
          SizedBox(height: 20,),
          Text("Proudly ❤ Indian",
              style: TextStyle(
                  fontFamily: "ProductSans-Regular",
                  fontSize: 14,
                  color: PrimaryDarkColor.withOpacity(0.5)),
              textAlign: TextAlign.center),
          SizedBox(height: 20,),
        ],
      ),
    );
  }

  Widget TwitterLink(String Url){
    return SocialMediaButton.twitter(
      url: Url,
      size: 30,
      color: Colors.blue,
    );
  }
  Widget FacebookLink(String Url){
    return SocialMediaButton.facebook(
      url: Url,
      size: 30,
      color: Colors.blue,
    );
  }
  Widget InstagramLink(String Url){
    return SocialMediaButton.instagram(
      url: Url,
      size: 30,
      color: Colors.pinkAccent,
    );
  }
  Widget WhatsappLink(String Url){
    return SocialMediaButton.whatsapp(
      url: Url,
      size: 30,
      color: Colors.green,
    );
  }
  Widget YouTubeLink(String Url){
    return SocialMediaButton.youtube(
      url: Url,
      size: 30,
      color: Colors.red,
    );
  }
  Widget GithubLink(String Url){
    return SocialMediaButton.github(
      url: Url,
      size: 30,
      color: Colors.black,
    );
  }
  Widget LinkedInLink(String Url){
    return SocialMediaButton.linkedin(
      url: Url,
      size: 30,
      color: Colors.blue,
    );
  }

  Widget AboutUsButtons(BuildContext context, String ButtonText, Widget ActivityName){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 55,
        child: FlatButton(
          child: Text(
            ButtonText,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "ProductSans-Regular",
            ),
          ),
          color: PrimaryDarkColor,
          textColor: PrimaryWhiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ActivityName));
          },
        ),
      ),
    );
  }
}
