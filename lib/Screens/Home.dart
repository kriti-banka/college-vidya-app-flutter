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
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/search");
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              )),
        ],
      ),
      extendBodyBehindAppBar: true,
      drawer: myDrawer(context),
      bottomNavigationBar: BottomNavigation(),
      body: Stack(
        children: [
          //CONTAINER ROTATE
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

          //ALL CONTENT IN SINGLECHILDSCROLLVIEW
          Container(
            margin: EdgeInsets.only(top: 90),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  //USER NAME
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Text(
                      'Hi User!',
                    ),
                    alignment: Alignment.topLeft,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  //BANNER
                  Container(
                      height: 170,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(30)))),

                  SizedBox(
                    height: 10,
                  ),

                  //SUGGEST ME IN TWO MINUTES
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/suggest');
                        },
                        child: Text(
                          "Suggest University in 2 minutes",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //DEGREE ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //UG COURSE BUTTON
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/ugcourses');
                          },
                          child: Text(
                            "UG Courses",
                            style: TextStyle(color: Colors.black,fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),

                      //PG COURSE BUTTON
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "PG Courses",
                            style: TextStyle(color: Colors.black,fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),

                      //EXECUTIVE EDUCATION BUTTON
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Executive Education",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),

                      //SKILLING AND CERTIFICATE
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Skilling & Cerificate",
                            style: TextStyle(color: Colors.black, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 15,),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Advanced Diploma",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
