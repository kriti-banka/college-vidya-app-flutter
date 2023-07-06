
import "package:collegevidya/Widgets/homeslider.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../Connections/Connections.dart";
import "../models/user model.dart";

class myDrawer extends StatefulWidget {
  final UserData userdetails;
  const myDrawer({required this.userdetails,Key? key}) : super(key: key);

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 2,
              child: Stack(
                children: [
                  Image.asset('assets/image/drawer background.png',
                      fit: BoxFit.cover),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  // backgroundImage: FileImage(File(pickedFile!.path)),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('${widget.userdetails.name}',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),),
                            ],
                          ),
                        ),

                        GestureDetector(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),),

          Expanded(
            flex: 5
          ,child: Container(
              child: Column(
                children: [
                ListTile(
                  title: Text("Search university in 2 minutes",
                    style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/suggest');
                  },
                ),

            ListTile(

              title: Text("Search by Courses",
                style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),),
              onTap: (){
                showdegreedialoguebox(context);
              },
            ),

            ListTile(

              title: Text("College Vidya Experts",
                style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/experts');
              },
            ),

            ListTile(

              title: Text("verify universities",
                style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/verifyuniversity');
              },
            ),

            ListTile(

              title: Text("FAQs",
                style: TextStyle(color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),),
              onTap: (){},
            ),

                ],
              ),
          )),

          Expanded(
            flex: 1,
              child: Container(
                  child: ListTile(
                      leading: Icon(Icons.login,color: Colors.black,size: 30,),
                      title: Text("Logout",style: TextStyle(color: Colors.black,
                          fontSize: 20,fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.pushNamed(context, '/signin');
                      },
                    )
              )),
        ],
      ),
    );
  }
}


void showdegreedialoguebox(BuildContext context) async{
  return await showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xffE1E5F2),
          actions: [
            SizedBox(height: 20,),
            Center(child: Text("Select Courses",style: TextStyle(color: Colors.black,fontSize: 20),)),
            SizedBox(height: 40,),
            
            Domain_drawergrid(fetchdomaindata())

          ],
        );
      });
}