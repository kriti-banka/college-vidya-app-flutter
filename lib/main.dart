import 'package:collegevidya/Screens/Signin.dart';
import 'package:collegevidya/Screens/Signup.dart';
import 'package:collegevidya/Screens/Splash%20Screen.dart';
import 'package:collegevidya/Screens/completeprofile.dart';
import 'package:flutter/material.dart';
import 'Screens/Home.dart';
import 'Screens/search.dart';
import 'Screens/searchuniversity.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        "/login" : (context) => home(),
        "/Sign up Text": (context) => signup(),
        "/signupbutton": (context) => completeprofile(),
        "/login text": (context) => signin(),
        "/search": (context) => search(),
        "/suggest uni": (context) => suggestuni(),
      },
    ),
  );
}