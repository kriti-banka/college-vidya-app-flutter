import 'package:collegevidya/Screens/Home.dart';
import 'package:collegevidya/Screens/community.dart';
import 'package:collegevidya/Screens/profile.dart';
import 'package:collegevidya/Screens/search.dart';
import 'package:collegevidya/Widgets/drawer.dart';
import 'package:collegevidya/models/user%20model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../Connections/login connections.dart';
import 'Signin-Signup/otp form.dart';

class navigation extends StatefulWidget {

  const navigation({required this.jwt,Key? key,}) : super(key: key);
  final String jwt;


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
    String jwt = widget.jwt;

    return Scaffold(

     drawer:
     FutureBuilder(
         future: fetchUserDetails(jwt),
         builder: (context, AsyncSnapshot snapshot) {
           if(snapshot.hasData)
           {
             return myDrawer(userdetails: snapshot.data,);
           }
           else{
             return Text("No data");
           }
         }
     ),
     
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


      body:
      FutureBuilder(

          future: fetchUserDetails(jwt),
          builder: (BuildContext context,AsyncSnapshot snapshot)
          {
            if(snapshot.connectionState==ConnectionState.waiting)
            {
              return Center(
                child: CircularProgressIndicator(),);
            }
            else
            {
              if(snapshot.hasData)
              {
                return [home(userdetails: snapshot.data,),community(),search(),profile()].elementAt(screen_index);
              }
              else
              {
                return Center(child: Text('No User Data Available'),);
              }
            }

          }
      ),

    );
  }

}
