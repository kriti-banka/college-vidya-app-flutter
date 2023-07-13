import 'package:collegevidya/Screens/Experts.dart';
import 'package:collegevidya/Screens/Navigation.dart';
import 'package:collegevidya/Screens/Signin-Signup/Signin.dart';
import 'package:collegevidya/Screens/Signin-Signup/Signup.dart';
import 'package:collegevidya/Screens/Splash%20Screen.dart';
import 'package:collegevidya/Screens/add%20post.dart';
import 'package:collegevidya/Screens/verifyUniversity%20.dart';
import 'package:flutter/material.dart';
import 'Screens/Suggestin2min.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String jwt= ''; // Set the JWT value here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(jwt: jwt),
      routes: {
        "/signup": (context) => signup(),
        "/signin": (context) => signin(),
        "/suggest": (context) => suggest(),
        '/addpost': (context) => addpost(),
        '/verifyuniversity': (context) => verifyuniversity(),
        '/experts' :(context) => experts(),
      },// Pass the jwt value to the Splash widget
    );
  }
}
