import 'dart:io';

import 'package:flutter/material.dart';



class community extends StatefulWidget {
  const community({Key? key}) : super(key: key);

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // bottomNavigationBar: BottomNavigation(screen_index: 1,),
      body: Center(
        child: Text('community'),
      ),
    );
  }
}
