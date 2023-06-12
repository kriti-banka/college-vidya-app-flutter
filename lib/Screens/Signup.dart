import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //DIVING PAGE
          Expanded(
              flex: 1,
              child: Container(
                color: Color(0xff001149),
                child: Center(child:
                Text("Signup",
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),),
              )
          ),

          Expanded(flex: 2,child: Container(
            color: Colors.white,
            child: Column(
              children: [

                SizedBox(height: 40,),

                //EMAIL TEXT FEILD
                SizedBox(width: 350,child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf3f3f3),
                    // prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Email or phone number',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                )
                ),

                SizedBox(height: 10,),

                //PASSWORD TEXT FIELD
                SizedBox(width: 350,child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFf3f3f3),
                    // prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Password',
                    suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none),
                  ),
                )
                ),


                SizedBox(height: 30,),

                // LOGIN BUTTON
                SizedBox(width: 350,height: 50,child:
                ElevatedButton(
                  child: Text('Signup',style:
                  TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context,'/completeprofile');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff001149),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                  ),
                )
                ),

                SizedBox(height: 20,),


                //SIGN IN GESTURE DETECT BUTTON
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100,0,0,0),
                    child: Row(
                      children: [
                        Text("Already have an account? ", style: TextStyle(
                            color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400
                        ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacementNamed(context,'/signin');
                          },
                          child: Text('login',style: TextStyle(
                              color: Colors.red[700],fontSize: 15,fontWeight: FontWeight.w500
                          ),),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
          )
        ],
      ),
    );
  }
}
