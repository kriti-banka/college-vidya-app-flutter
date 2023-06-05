import "package:flutter/material.dart";
import "package:salomon_bottom_bar/salomon_bottom_bar.dart";

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
        onTap: (i)=> setState((){
          _currentIndex=i;
        }),
        items: [
          //HOME
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Explore"),
            selectedColor: Colors.blue
          ),

          //Journey
          SalomonBottomBarItem(
              icon: Icon(Icons.airplanemode_active),
              title: Text("Journey"),
              selectedColor: Colors.pink
          ),

          //DASHBOARD
          SalomonBottomBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Dashboard"),
              selectedColor: Colors.blue
          ),

          //WISHLIST
          SalomonBottomBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Wishlist"),
              selectedColor: Colors.pink
          ),

        ]);
  }
}
