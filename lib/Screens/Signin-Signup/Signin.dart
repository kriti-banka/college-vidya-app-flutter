import 'package:collegevidya/Connections/login%20connections.dart';
import 'package:collegevidya/Screens/Navigation.dart';
import 'package:collegevidya/Screens/Signin-Signup/otp%20form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';



class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  TextEditingController mobileNumberController = TextEditingController();
  String mobile = '';
  FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    mobileNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          //DIVING PAGE
          Expanded(
              flex: 1,
              child: Container(
                color: Color(0xff1043E9),
                child: Center(child:
                Text("Login",
                  style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),),),
              )
          ),

          Expanded(flex: 2, child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50,),

                  //MOBILE NUMBER TEXT FEILD
                  // SizedBox(width: 350,
                  //     child: TextFormField(
                  //       controller: mobileNumberController,
                  //   keyboardType: TextInputType.number,
                  //       inputFormatters: [
                  //         LengthLimitingTextInputFormatter(10),
                  //         FilteringTextInputFormatter.digitsOnly,
                  //       ],
                  //
                  //   decoration: InputDecoration(
                  //     filled: true,
                  //     fillColor: Color(0xFFf3f3f3),
                  //     // prefixIcon: Icon(Icons.email_outlined),
                  //     hintText: 'phone number',
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(30),
                  //         borderSide: BorderSide.none),
                  //   ),
                  //
                  // )
                  // ),

                  SizedBox(
                    width: 370,height: 70,
                    child: IntlPhoneField(
                      controller: mobileNumberController,
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[250],
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                      ),
                      languageCode: "en",
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },
                    ),
                  ),


                  SizedBox(height: 100,),

                  // LOGIN BUTTON
                  Container(
                    height: 50,
                    width: 370,
                    child: ElevatedButton(

                      child: Text('Login', style:
                      TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),),

                      onPressed: () async{
                    String mobile = mobileNumberController.text;
                    String otp = await generateOTP(mobile);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPVerificationPage(mobile: mobile)));

                    // if ('$otp' != null){
                    //
                    //   showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return AlertDialog(
                    //         content: new Text("$otp"),
                    //         actions: <Widget>[
                    //           new TextButton(
                    //             child: new Text("OK"),
                    //             onPressed: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => OTPVerificationPage(mobile: mobile)));
                    //             },
                    //           ),
                    //         ],
                    //       );
                    //     },
                    //   );
                    //
                    //   print('Generated OTP: $otp');
                    //
                    // }
                    // else{
                    //   showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return AlertDialog(
                    //         title: new Text("Opps!"),
                    //         content: new Text("Can't generate OTP"),
                    //         actions: <Widget>[
                    //           new TextButton(
                    //             child: new Text("OK"),
                    //             onPressed: () {
                    //               Navigator.of(context).pop();
                    //             },
                    //           ),
                    //         ],
                    //       );
                    //     },
                    //   );
                    // }
                      },

                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1043E9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),


                  //SIGN IN GESTURE DETECT BUTTON
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Row(
                        children: [
                          Text("Don't have an account? ", style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, '/signup');
                            },
                            child: Text('Sign up', style: TextStyle(
                                color: Color(0xff1043E9),
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          )
        ],
      ),
    );
  }


}
