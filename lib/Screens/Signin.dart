import 'package:collegevidya/Screens/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
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
                  Text("Signin",
                    style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),),
              )
          ),

          Expanded(flex: 2,child: Container(
            color: Colors.white,
            child: Column(
              children: [

                SizedBox(height: 50,),

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

                SizedBox(height: 20,),

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

                SizedBox(height: 60,),

                // LOGIN BUTTON
                SizedBox(width: 350,height: 50,child:
                    ElevatedButton(
                      child: Text('Login',style:
                      TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),),
                      onPressed: (){
                        Navigator.pushReplacementNamed(context,'/navigation');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff001149),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                    )
                ),

                SizedBox(height: 30,),


                //SIGN IN GESTURE DETECT BUTTON
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100,0,0,0),
                    child: Row(
                      children: [
                        Text("Don't have an account? ", style: TextStyle(
                            color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400
                        ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, '/signup');
                          },
                          child: Text('Sign up',style: TextStyle(
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
