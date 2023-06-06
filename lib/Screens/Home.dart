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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, "/search");
          }, icon: Icon(Icons.search,color: Colors.black,)),

          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.black,)),
        ],
      ),
      extendBodyBehindAppBar: true,

      drawer: myDrawer(context),

      bottomNavigationBar: BottomNavigation(),

      body: Stack(
          children: [
          Transform.rotate(
                angle: -0.38,
                alignment: Alignment.centerLeft,

              child: Container(
                child: Text('.'),
                width: 700,height: 450,
                decoration: BoxDecoration(
                  color: Color(0xff698BFB).withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
              ),
              ),

            Padding(
              padding: const EdgeInsets.only(top: 80,left: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Hi User!'),
                    ),

                    SizedBox(height: 10,),

                    Container(height: 170,width: 340,
                        decoration: BoxDecoration(color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(30)))
                    ),

                    SizedBox(width: 330,height: 70,
                      child: Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            onPressed: (){
                              Navigator.pushNamed(context, '/suggest');
                            },
                            child: Text("Suggest University in 2 minutes",
                            style: TextStyle(color: Colors.blue),)),
                      ),
                    )
                  ],
                ),
              ),
            )




          ],
        ),

      // body: SingleChildScrollView(
      //
      //   padding: EdgeInsets.symmetric(horizontal: 30),
      //
      //   child: Column(
      //
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //
      //     children: [
      //
      //       Text('    Hi User'),
      //
      //       Padding(
      //         padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      //         child: Container(height: 170,width: 340,
      //         decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(30))),),
      //       ),
      //
      //       SizedBox(height: 10,),
      //       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
      //         SizedBox(width: 90,
      //           child: OutlinedButton(onPressed: (){}, child: Text("UG Courses",
      //             style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700,fontSize: 10),),
      //           style: OutlinedButton.styleFrom(
      //               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
      //         ),
      //
      //         SizedBox(width: 90,
      //           child: OutlinedButton(onPressed: (){}, child: Text("PG Courses",
      //             style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 10),),
      //             style: OutlinedButton.styleFrom(
      //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
      //         ),
      //
      //         SizedBox(width: 90,
      //           child: OutlinedButton(onPressed: (){}, child: Text("Diploma",
      //             style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 10),),
      //             style: OutlinedButton.styleFrom(
      //                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),),
      //         )
      //       ],)
      //     ],
      //   ),
      // ),

    );
  }
}
