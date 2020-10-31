import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PhoneAuth.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => PhoneAuth())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
//          CircularParticle(
//            key: UniqueKey(),
//            awayRadius: 50,
//            numberOfParticles: 70,
//            speedOfParticles: 1,
//            height: MediaQuery.of(context).size.height,
//            width: MediaQuery.of(context).size.width,
//            onTapAnimation: true,
//            particleColor: Colors.lightBlue.withOpacity(0.1),
//            awayAnimationDuration: Duration(milliseconds: 600),
//            maxParticleSize: 5,
//            isRandSize: false,
//            isRandomColor: false,
//            awayAnimationCurve: Curves.linear,
//            enableHover: true,
//            hoverColor: Colors.white,
//            hoverRadius: 90,
//            connectDots: true, //not recommended
//          ),
            SplashItems()
          ],
        ));
  }

  Widget SplashItems() {
    return Container(
      child: Stack(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage("assets/images/logo.png"),
              width: 100,
              height: 100,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/madeintag.png"),
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
