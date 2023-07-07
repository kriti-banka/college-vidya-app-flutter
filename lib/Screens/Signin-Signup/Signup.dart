import 'package:collegevidya/Connections/Connections.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Connections/login connections.dart';
import 'otp form.dart';
import 'package:intl/intl.dart';


class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  FocusNode focusNode = FocusNode();

  //TEXT FIELD STRINGS
  String name = '';
  String dob = '';
  String mobile = '';
  String email = '';
  String user_id ='';

  // DROP DOWN CONTROLLERS
  String? _selectedGender;
  String? _selectedState;
  String? _selectedCity;
  String? _selectedCourse;
  String? _selectedcountry;
  String? flag;

  //TEXT FIELD CONTROLLERS
  late TextEditingController _dob = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();


  Future<void> generatelead(user_id,name, dob, gender, mobile, state,city, email, course,selected_country) async {

    try {
      await leadForm(user_id,name, dob, gender, mobile, state,city, email, course,selected_country); // Make the OTP verification request

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_id', user_id);

    } catch (e) {
      print('OTP verification failed: $e');
    }
  }

  //MASK FOR DOB
  var maskFormatter = new MaskTextInputFormatter(
    mask: "##/##/####",
    filter: {"#": RegExp(r'[0-9]')},
  );

  List statelist = [];
  List citylist = [];
  List courselist =[];
  List courseName =[];
  List countrylist = [];

  //STATE API
  Future fetchState() async {
    var baseUrl = "https://admin.collegevidya.com/state/";
    http.Response response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        statelist = jsonData;
      });
    }
    else {
      print('Request failed with status 1: ${response.statusCode}');
    }
  }

  //CITY API
  Future<void> fetchCityById(int id) async {
    final url = 'https://admin.collegevidya.com/city/$id/';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        // print(data['data']);
        // return data['data'];
        setState(() {
          citylist= data['data'];
        });
      } else {
        print('Request failed with status 2: ${response.statusCode}');
      }
    } catch (e) {
      // Exception occurred, handle the error
      print('Error occurred: $e');
    }
  }

  String convertToUTC(String dateString) {
    DateTime date = DateFormat("dd/MM/yyyy").parse(dateString);
    DateTime utcDateTime = date.toUtc();
    final utcFormat = DateFormat("dd/MM/yyyy HH:mm:ss");
    String utcDateString = utcFormat.format(utcDateTime);
    return utcDateString;
  }

  //COURSE
  Future<void> fetchcourses() async {
    final data = await fetchdomaindata();
    courselist = data;

    setState(() {
      courseName = courselist.map((domain) => domain['courses']).toList().expand((course) => course).toList();
    });
  }

  //FETCH CURRENT COUNTRY
  // Future<void> fetchCurrentCountry() async {
  //   var url = Uri.https('api.country.is', '/');
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     var data = json.decode(response.body);
  //     setState(() {
  //       _selectedcountry = data['phonecode'];
  //       // _selectedcountry = data['iso2'];
  //     });
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //   }
  // }



  //FETCH COUNTRY
  Future fetchCountry() async {
    var url = Uri.parse('https://admin.collegevidya.com/countries/');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      countrylist = json.decode(response.body);
      // setState(() {
      //   countrylist = data;
      // });
    } else {
      print('Request failed with status 3: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchState();
    fetchcourses();
    // fetchCurrentCountry();
    fetchCountry();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                      weight: 20,
                    ))),
            Container(
              // color: Colors.yellowAccent,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logo/main-logo.png',
                      width: 100,
                    ),

                    Text(
                      'To Sign up, please enter the following details',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    //USER NAME
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: TextField(
                          controller: _name,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            prefixIcon: Image.asset('assets/icons/User.png'),
                            hintText: 'User-name',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                          ),
                        )),

                    SizedBox(
                      height: 20,
                    ),

                    //DOB AND GENDER ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: 45,
                            child: TextField(
                              controller: _dob,
                              inputFormatters: [maskFormatter],
                              keyboardType: TextInputType.number,
                              onChanged: (value){
                                setState(() {
                                  value = _dob.text.trim();
                                  print(convertToUTC(value));
                                });
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[250],
                                prefixIcon: Image.asset('assets/icons/DOB.png'),
                                hintText: 'DD/MM/YYYY',
                                hintStyle: TextStyle(fontSize: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                              ),
                            )),

                        //GENDER
                        DropdownButtonHideUnderline(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.grey[300]?.withOpacity(0.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: DropdownButton(
                                dropdownColor: Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                icon: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  ),
                                ),
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    'Gender',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                value: _selectedGender,
                                onChanged: (genderValue) {
                                  setState(() {
                                    _selectedGender = genderValue!;
                                  });
                                },
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black // Remove underline
                                    ),
                                items: [
                                  DropdownMenuItem(
                                    value: 'male',
                                    child: Text('male'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'female',
                                    child: Text('female'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //PHONE NUMBER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButtonHideUnderline(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Colors.grey[300]?.withOpacity(0.4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),

                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: DropdownButton(

                                dropdownColor: Colors.grey[300],
                                menuMaxHeight: 300,

                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    'country',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black // Remove underline
                                ),
                                icon: SizedBox.shrink(),


                                value: _selectedcountry,

                                onChanged: (countryValue) {
                                  setState(() {
                                    print(countryValue);
                                    _selectedcountry = countryValue;
                                  });
                                },

                                items: countrylist.map((selected_country) {
                                  var phonecode = selected_country['phonecode'];
                                  var iso2 = selected_country['iso2'];
                                  var flagUrl = "https://flagcdn.com/w20/$iso2.png";
                                  var flag = flagUrl.toLowerCase();

                                  return DropdownMenuItem<String>(
                                    value: phonecode,
                                    child: Row(
                                      children: [
                                        Image.network(flag,width: 25,),
                                        SizedBox(width: 15),
                                        Row(
                                          children: [
                                            Text('+'),
                                            Text(phonecode),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 2,
                        // ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 45,
                            child: TextField(
                              controller: _mobile,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                hintText: 'phoneNumber',
                                hintStyle: TextStyle(fontSize: 12),
                                filled: true,
                                fillColor: Colors.grey[250],
                                prefixIcon: Image.asset('assets/icons/User.png'),
                                // hintStyle: TextStyle(fontSize: 12),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                              ),
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //STATE AND CITY
                    DropdownButtonHideUnderline(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[300]?.withOpacity(0.4),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: DropdownButton<String>(
                            dropdownColor: Colors.grey[300],
                            menuMaxHeight: 300,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child:
                                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                            ),
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'State',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            value: _selectedState,
                            onChanged: (stateValue) {
                              setState(() {
                                _selectedState = stateValue;
                              });
                              fetchCityById(int.parse(_selectedState!));
                            },
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black,
                            ),
                            items: statelist.map((state) {
                              return DropdownMenuItem(
                                value: state['id'].toString(),
                                child: Text(state['state'].toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //CITY
                    DropdownButtonHideUnderline(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: DropdownButton(
                            dropdownColor: Colors.grey[300],
                            menuMaxHeight: 300,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            ),
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'City',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            value: _selectedCity,
                            onChanged: (cityValue) {
                              setState(() {
                                _selectedCity = cityValue;
                              });
                            },
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black // Remove underline
                                ),
                            items: citylist
                                .map((city) {
                              return DropdownMenuItem(
                                value: city['id'].toString(),
                                child: Text(city['city'].toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    //EMAIL
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: TextField(
                          controller: _email,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[250],
                            prefixIcon:
                                Image.asset('assets/icons/Mail inbox.png'),
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 12),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                          ),
                        )),

                    SizedBox(
                      height: 20,
                    ),

                    //SELECT COURSE
                    DropdownButtonHideUnderline(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey[300]?.withOpacity(0.4),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: DropdownButton(
                            dropdownColor: Colors.grey[300],
                            menuMaxHeight: 300,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              ),
                            ),
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Row(
                                children: [
                                  Image.asset('assets/icons/Graduation hat.png'),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    'Course',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            value: _selectedCourse,
                            onChanged: (courseValue) {
                              setState(() {
                                _selectedCourse = courseValue!;
                              });
                            },
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.black // Remove underline
                                ),


                            items:
                            courseName
                                .map((courses) {
                              return DropdownMenuItem(
                                value: courses['id'].toString(),
                                child: Text(courses['name'].toString()),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1043E9),
                              shadowColor: Color(0xffB7C8FF),
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),

                          onPressed: () async {

                            String name = _name.text;
                            String gender = _selectedGender!;
                            String mobile = _mobile.text;
                            String state = _selectedState!;
                            String city = _selectedCity!;
                            String email = _email.text;
                            String course = _selectedCourse!;
                            String dob = _dob.text;
                            String selected_country = _selectedcountry!;

                            String otp = await generateOTP(mobile);

                            SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                            String user_id = prefs.getString('user_id') ?? '';

                            await generatelead(user_id,name, dob, gender, mobile, state, city, email, course,selected_country);

                            print(user_id);

                            if (user_id.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          OTPVerificationPage(mobile: mobile)));
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text('lead generation failed'),
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
                          },
                          child: Text('Send OTP')),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already a User?',
                          style: TextStyle(fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signin');
                          },
                          child: Text(
                            'Signin',
                            style:
                                TextStyle(fontSize: 15, color: Color(0xff1043E9)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
