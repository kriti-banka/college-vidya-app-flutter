import 'package:collegevidya/Screens/Home.dart';
import 'package:collegevidya/Screens/community.dart';
import 'package:collegevidya/Screens/profile.dart';
import 'package:collegevidya/Screens/search.dart';
import 'package:collegevidya/Widgets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class navigation extends StatefulWidget {
  const navigation({Key? key}) : super(key: key);

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  int screen_index=0;

  void _onItemTapped(int index) {
    setState(() {
      screen_index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


     drawer: myDrawer(),


      bottomNavigationBar: SalomonBottomBar(
        curve: Curves.linear,

        onTap: _onItemTapped,
        currentIndex: screen_index,
        items: [
          SalomonBottomBarItem(
              selectedColor: Color(0xff698BFB),
              title: const Text('Home'),
              icon: const Icon(Icons.home_filled,size: 25,)),
          SalomonBottomBarItem(
              selectedColor: Color(0xff698BFB),
              title: const Text('community'),
              icon: const Icon(Icons.people_alt_sharp)),
          SalomonBottomBarItem(
              selectedColor: Color(0xff698BFB),
              title: const Text('search'),
              icon: const Icon(Icons.search_outlined)),
          SalomonBottomBarItem(
              selectedColor: Color(0xff698BFB),
              title: const Text('profile'),
              icon: const Icon(Icons.person)),
        ],
      ),

      body: [home(),community(),search(),profile()].elementAt(screen_index),



    );
  }
}
