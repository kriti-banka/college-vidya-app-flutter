import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        margin: EdgeInsets.only(left: 20,top: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset('assets/logo/main-logo.png',width: 100,),

              Text('To Sign up, please enter the following details',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),),

              SizedBox(height: 50,),

              //USER NAME
              SizedBox(width: 370,height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[250],
                      prefixIcon: Icon(Icons.person),
                      hintText: 'User-name',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                      ),
                    ),
                  )
              ),

              SizedBox(height: 30,),

              //DOB AND GENDER ROW
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 180,height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            prefixIcon: Icon(Icons.calendar_month),
                            hintText: 'DD/MM/YYYY',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                          ),
                        )
                    ),

                    SizedBox(width: 180,height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            suffixIcon: IconButton(icon: Icon(Icons.arrow_drop_down_outlined),
                            onPressed: (){

                            },),
                            hintText: 'Gender',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              //PHONE NUMBER
              SizedBox(
                width: 370,height: 70,
                child: IntlPhoneField(
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

              SizedBox(height: 20,),

              //STATE AND CITY
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 180,height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            suffixIcon: IconButton(icon: Icon(Icons.arrow_drop_down_outlined),
                              onPressed: (){

                              },),
                            hintText: 'State',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                          ),
                        )
                    ),

                    SizedBox(width: 180,height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            suffixIcon: IconButton(icon: Icon(Icons.arrow_drop_down_outlined),
                              onPressed: (){

                              },),
                            hintText: 'City',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              //EMAIL
              SizedBox(width: 370,height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[250],
                      prefixIcon: Icon(Icons.mail),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                    ),
                  )
              ),

              SizedBox(height: 30,),

              //SELECT COURSE
              SizedBox(width: 370,height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[250],
                      prefixIcon: Image.asset('assets/icons/Graduation hat.png'),
                      suffixIcon: IconButton(icon: Icon(Icons.arrow_drop_down_outlined),
                        onPressed: (){

                        },),
                      hintText: 'Course',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                    ),
                  )
              ),

              SizedBox(height: 50,),

              Container(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1043E9),
                      shadowColor: Color(0xffB7C8FF),
                      elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)))
                    ),
                    onPressed: (){},
                    child: Text('Send OTP')),
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a User?',
                  style: TextStyle(
                    fontSize: 15
                  ),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/signin');
                    },
                    child: Text('Signin',style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff1043E9)
                    ),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
