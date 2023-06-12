import 'dart:io';

import 'package:flutter/material.dart';



class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        // bottomNavigationBar: BottomNavigation(screen_index: 3,),
      body: Center(
        child: Text('account'),
      ),
    );
  }
}
