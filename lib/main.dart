import 'package:collegevidya/Screens/Navigation.dart';
import 'package:collegevidya/Screens/Signin.dart';
import 'package:collegevidya/Screens/Signup.dart';
import 'package:collegevidya/Screens/Splash%20Screen.dart';
import 'package:collegevidya/Screens/add%20post.dart';
import 'package:collegevidya/Screens/completeprofile.dart';
import 'package:flutter/material.dart';
import 'Screens/Degree courses/UG degree/B.Tech/btech_spec.dart';
import 'Screens/Degree courses/UG degree/UG Courses.dart';
import 'Screens/Home.dart';
import 'Screens/community.dart';
import 'Screens/profile.dart';
import 'Screens/search.dart';
import 'Screens/Suggestin2min.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/navigation': (context) => navigation(),
        "/Signup": (context) => signup(),
        "/completeprofile": (context) => completeprofile(),
        "/signin": (context) => signin(),
        "/suggest": (context) => suggest(),
        "/ugcourses": (context) => ugcourses(),
        "/btech": (context) => btech(),
        '/addpost': (context) => addpost(),
      },
    ),
  );
}