import 'dart:io';

import 'package:collegevidya/Widgets/postcard.dart';
import 'package:flutter/material.dart';



class community extends StatefulWidget {
  const community({Key? key}) : super(key: key);

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {


    TabController _tabController = TabController(length: 3, vsync: this);

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

        bottom: TabBar(

            controller: _tabController,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.blue,width: 3.5),),
            unselectedLabelColor: Colors.black,

            tabs: [

              Tab(text: "Mba",),
              Tab(text: "B.Tech",),
              Tab(text: "M.Tech",)

            ]),
      ),
      // extendBodyBehindAppBar: true,

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/addpost');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: TabBarView(
          controller: _tabController,
          children: [

            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (
                  BuildContext context, int index) {
                return Postcard(context);
              },
            ),

            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (
                  BuildContext context, int index) {
                return Postcard(context);
              },
            ),

            ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (
                  BuildContext context, int index) {
                return Postcard(context);
              },
            ),


          ],
        ),
      )
    );
  }
}
