import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class btech extends StatefulWidget {
  const btech({Key? key}) : super(key: key);

  @override
  State<btech> createState() => _btechState();
}

class _btechState extends State<btech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "B.Tech",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/ugcourses');
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigation(screen_index: 0,),

      body: SingleChildScrollView(
        child: (Column(

          children: [
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Computer Science Engineering",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xffE1E5F2)),
                  ),
                ),

                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Mechanical Engineering",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xffE1E5F2)),
                  ),
                ),

                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Civil Engineering",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xffE1E5F2)),
                  ),
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Electronics Engineering",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xffE1E5F2)),
                  ),
                ),

                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Electrical Engineering",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xffE1E5F2)),
                  ),
                ),

                Container(
                  height: 110,
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Mechanical and Automobile Engineering",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Color(0xffE1E5F2)),
                  ),
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 110,
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Not Decided Yet",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xffE1E5F2)),
                    ),
                  ),
                ),
              ],
            )


          ],
        )),
      ),
    );
  }
}
