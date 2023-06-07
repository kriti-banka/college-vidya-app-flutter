

import 'package:collegevidya/Screens/Signin.dart';
import 'package:collegevidya/Screens/Signup.dart';
import 'package:collegevidya/Screens/Splash%20Screen.dart';
import 'package:collegevidya/Screens/completeprofile.dart';
import 'package:flutter/material.dart';
import 'Screens/Degree courses/UG degree/B.Tech/btech_spec.dart';
import 'Screens/Degree courses/UG degree/UG Courses.dart';
import 'Screens/Home.dart';
import 'Screens/search.dart';
import 'Screens/Suggestin2min.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        "/home" : (context) => home(),
        "/Signup": (context) => signup(),
        "/completeprofile": (context) => completeprofile(),
        "/signin": (context) => signin(),
        "/search": (context) => search(),
        "/suggest": (context) => suggest(),
        "/ugcourses": (context) => ugcourses(),
        "/btech": (context) => btech(),
      },
    ),
  );
}