import 'package:collegevidya/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../Widgets/appbar.dart';
import 'package:collegevidya/Widgets/bottombar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shadowColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "/search");
          }, icon: Icon(Icons.search,color: Colors.black,)),

          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.black,)),
        ],
      ),

      drawer: myDrawer(context),

      bottomNavigationBar: BottomNavigation(),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(height: 170,width: 340,
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(30))),),
            ),

            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
              SizedBox(width: 90,
                child: OutlinedButton(onPressed: (){}, child: Text("UG Courses",
                  style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700,fontSize: 10),),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
              ),

              SizedBox(width: 90,
                child: OutlinedButton(onPressed: (){}, child: Text("PG Courses",
                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 10),),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
              ),

              SizedBox(width: 90,
                child: OutlinedButton(onPressed: (){}, child: Text("Diploma",
                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 10),),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
              )
            ],)
          ],
        ),
      ),

    );
  }
}
