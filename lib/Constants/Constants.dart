import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  //style color
  static Shader linearGradient = LinearGradient(
    colors: <Color>[Colors.purple, Colors.orange],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  // text styles
  static const regularHeading = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const boldHeading = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const boldWhiteHeading = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const regularDarkText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const regularText =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
  static const regularWiteText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const errorText =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.red);

  static const regularBlueText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.blue,
  );
  static const regularWhiteText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const regularGreenText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.green,
  );
  static const regularRedText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: Colors.red,
  );
  static const smallGreenText = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    color: Colors.blue,
  );

  //image paths
  static const logopath = 'assets/images/logo.png';
  static const googlelogopath = 'assets/images/google.png';
  static const facebooklogopath = 'assets/images/facebook.png';
  static const twitterlogopath = 'assets/images/twitter.png';
}
