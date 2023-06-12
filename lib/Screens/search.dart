import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
            onPressed: (){Scaffold.of(context).openDrawer();},
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          // shadowColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "/search");
                },
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_call,
                  color: Colors.black,
                )),
          ],
        ),
        extendBodyBehindAppBar: true,

      // bottomNavigationBar: BottomNavigation(screen_index: 2,),

      body:
        Stack(children: [

          Transform.rotate(
            angle: -0.38,
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(''),
              width: 700,
              height: 450,
              decoration: BoxDecoration(
                  color: Color(0xff698BFB).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),


          Container(
            margin: EdgeInsets.only(top: 90),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.fromLTRB(90, 100, 0, 0),
                  child: Row(
                    children: [
                      Text("College",style: TextStyle(color: Colors.blue,fontSize: 35),),
                      Text('Search',style: TextStyle(color: Colors.black,fontSize: 35),)
                    ],
                  ),
                ),
                Text("#ChunoWahiJoHaiSahi"),

                SizedBox(height: 60,),
                SizedBox(width: 300,height: 55,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (value){},
                    onSubmitted: (value){},
                    decoration: InputDecoration(
                        filled: true,fillColor: Colors.grey[400],
                        suffixIcon: Icon(CupertinoIcons.search_circle_fill,color: Colors.white,size: 47,),
                        hintText: 'Type here',
                        hintStyle: TextStyle(fontSize: 13,color: Colors.white),


                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide.none
                        )),
                  ),)
              ],
            ),
          )
        ],

        )

    );
  }
}
