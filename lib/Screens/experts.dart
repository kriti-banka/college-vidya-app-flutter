import 'package:collegevidya/Connections/Connections.dart';
import 'package:collegevidya/Screens/Navigation.dart';
import 'package:collegevidya/Widgets/expertcard.dart';
import 'package:flutter/material.dart';


class experts extends StatefulWidget {
  const experts({Key? key}) : super(key: key);

  @override
  State<experts> createState() => _expertsState();
}

class _expertsState extends State<experts> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.navigate_before,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> navigation(jwt: jwt)));
          },
        ),
        title: Text('College Vidya Experts',style: TextStyle(color: Colors.black),),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt, color: Colors.black,))
        ],
      ),

      body: Column(
        children: [

          Container(
            child: Center(
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),

                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Creates border
                      color: Colors.white),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(text: "All",),
                    Tab(text: "Active",)
                  ],
                ),
              ),
            ),
          ),


          SizedBox(height: 30,),

          Container(
            child: Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Expertlist(expertsdata()),
                  Expertlist(expertsdata()),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
