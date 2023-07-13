import 'dart:convert';
import 'package:collegevidya/Screens/Navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../Connections/login connections.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class OTPVerificationPage extends StatefulWidget {
  final String mobile;
  OTPVerificationPage({required this.mobile});

  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage>  {
  final List<TextEditingController> otpControllers =
      List.generate(6, (_) => TextEditingController());

  // late String otp;
  late String mobile;
  String otpcode = '';



  @override
  void initState() {
    // TODO: implement initState
    // mobile = widget.mobile;
    super.initState();
  }

  @override
  void dispose() {
    for (final controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }


  Future<void> verifyOTPAndLogin() async {
    String mobile = widget.mobile; // Replace with the user's phone number
    // String otp = otpControllers
    //     .map((controller) => controller.text)
    //     .join(); // Get the entered OTP from the text controller
    // String otp = widget.otp;
    // print('otp: $otp');
    try {
      Map<String, dynamic> credentials =
          await verifyOTP(mobile,otpcode); // Make the OTP verification request
      // print(credentials['jwt']);

      String jwt = credentials['jwt'];
      String refresh = credentials['refresh'];
      String user_id = credentials['user_id'];

      // SAVE TOKEN IN SHARED PREFERENCES
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt', jwt);
      await prefs.setString('refresh', refresh);
      await prefs.setString('user_id', user_id);
    } catch (e) {
      // Handle OTP verification failure
      print('OTP verification failed: $e');
    }

  }

  //DECODE TOKEN
  Map<String, dynamic> decodeToken(jwt) {
    final Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt);
    print(decodedToken);
    return decodedToken;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    child: Image.asset('assets/image/drawer background.png',
                        width: double.maxFinite, fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: Text(
                        "Otp Verification",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                child: Column(
                  children: [
                    PinFieldAutoFill(
                      currentCode: otpcode,
                      codeLength: 6,
                      onCodeChanged: (otp) {
                        print("OnCodeChanged : $otp");
                        otpcode = otp.toString();
                        print(otpcode);
                      },
                      onCodeSubmitted: (val) {
                        print("OnCodeSubmitted : $val");
                      },
                    ),

                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            backgroundColor: Color(0xff1043E9)),
                        onPressed: () async {
                          await verifyOTPAndLogin();

                          //Retrieve token
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          String jwt = prefs.getString('jwt') ?? '';
                          String refresh = prefs.getString('refresh') ?? '';
                          String user_id = prefs.getString('user_id') ?? '';
                          print(jwt);
                          print(refresh);
                          print(user_id);

                          if (jwt.isNotEmpty &&
                              refresh.isNotEmpty &&
                              user_id.isNotEmpty
                              && otpcode.length==6
                              )
                          {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => navigation(
                                    jwt: jwt,
                                  ),
                                ),
                              );
                            }
                            else {
                              // Handle token verification failure
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('Token Verification Failed'),
                                  content: Text('Please try again.'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }

                          //REFRESH TOKEN
                          fetchUserDetails(jwt);

                            decodeToken(jwt);
                            DateTime expirationDate = JwtDecoder.getExpirationDate(jwt);
                            print(expirationDate);

                            Duration tokenTime = JwtDecoder.getTokenTime(jwt);
                            print(tokenTime.inDays);

                            bool hasExpired = JwtDecoder.isExpired(jwt);
                            print("token Expired? : $hasExpired");

                            if (hasExpired == true){
                              fetchRefreshToken(jwt,user_id);
                            }

                        },
                        child: Text(
                          'Verify OTP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        child: Text('Resend OTP !',
                        style: TextStyle(
                          color: Colors.blue[900]
                        ),),
                        onTap: () {
                          generateOTP(widget.mobile);
                        },
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
