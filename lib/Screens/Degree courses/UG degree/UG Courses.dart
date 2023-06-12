import 'package:collegevidya/Screens/Degree%20courses/UG%20degree/B.Tech/btech_spec.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ugcourses extends StatefulWidget {
  const ugcourses({Key? key}) : super(key: key);

  @override
  State<ugcourses> createState() => _ugcoursesState();
}

class _ugcoursesState extends State<ugcourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text("UG Courses",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/navigation');
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigation(screen_index: 0,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/btech');
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.blue[900],
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                child: Text(
                                  "3 Years",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orangeAccent[100]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.book,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'B.Tech',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Container(
                                child: Text(
                                  'Compare 3 universities',
                                  textAlign: TextAlign.center,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shadowColor: Colors.blue[900],
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 60,
                                  height: 20,
                                  child: Text(
                                    "3 Years",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.orangeAccent[100]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Icon(
                                  Icons.book,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'B.Tech',
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Container(
                                  child: Text(
                                    'Compare 3 universities',
                                    textAlign: TextAlign.center,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[900],
                                      borderRadius: BorderRadius.circular(15)),
                                )
                              ],
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
