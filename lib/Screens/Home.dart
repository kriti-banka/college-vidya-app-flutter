import 'dart:convert';
import 'dart:io';

import 'package:collegevidya/Screens/community.dart';
import 'package:collegevidya/Screens/search.dart';
import 'package:collegevidya/Widgets/drawer.dart';
import 'package:collegevidya/Widgets/slider.dart';
import 'package:collegevidya/models/University_home_page_list.dart';
import 'package:flutter/material.dart';
import '../Widgets/appbar.dart';
import 'package:collegevidya/Screens/profile.dart';
import 'package:collegevidya/Widgets/slider.dart';

import 'package:http/http.dart' as http;

// List<Unilistmodel> parseUnilistmodel(String responseBody) {
//   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//   return parsed.map<Unilistmodel>((json) => Unilistmodel.fromJson(json)).toList();
// }
// Future<List<Unilistmodel>> fetchUnilistmodel() async {
//   // print("SDfs/dfsdfsdf");
//   final response = await http.get('https://admin.collegevidya.com/home_page_universities/' as Uri);
//   if (response.statusCode == 200) {
//     var data = jsonDecode(response.body);
//     print(data);
//     // return parseUnilistmodel(response.body);
//     return data;
//   } else {
//     throw Exception('Unable to fetch products from the REST API');
//   }
// }

Future<void> fetchData() async {
  var url = Uri.parse('https://admin.collegevidya.com/home_page_universities/');

  var response = await http.get(url);
  if (response.statusCode == 200) {
    // Request successful, parse the response JSON
    var data = jsonDecode(response.body);
    print(data);
    return data.data;
    // Process the data
    // ...
  } else {
    // Request failed
    print('Request failed with status: ${response.statusCode}.');
  }
}
// List<Unilistmodel> parseUnilist(String responseBody) {
//   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//   return parsed.map<Unilistmodel>((json) =>  Unilistmodel.fromJson(json)).toList();
// }

// Future<List<Unilistmodel>> fetchData() async {
//   final response = await http.get(
//       'https://admin.collegevidya.com/home_page_universities/' as Uri);
//   if (response.statusCode == 200) {
//     return parseUnilist(response.body);
//   } else {
//     throw Exception('Unable to fetch products from the REST API');
//   }
// }


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late Unilistmodel data;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: (){Scaffold.of(context).openDrawer();},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // shadowColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/search");
              },
              icon: Icon(
                Icons.circle_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_call,
                color: Colors.black,
              )),
        ],
      ),
      extendBodyBehindAppBar: true,


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
                  // USER NAME
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'Hi User!',
                    ),
                    alignment: Alignment.topLeft,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // BANNER
                  Container(
                      height: 170,
                      width: 390,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(30)))),

                  SizedBox(
                    height: 10,
                  ),

                  // SUGGEST ME IN TWO MINUTES
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.blue,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/suggest');
                        },
                        child: Text(
                          "        Suggest University in 2 minutes       ",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        )),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // DEGREE ROW
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
                            style: TextStyle(color: Colors.black, fontSize: 13),
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
                            style: TextStyle(color: Colors.black, fontSize: 13),
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

                  SizedBox(
                    height: 15,
                  ),

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
                  SizedBox(height: 18,),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("    University on College Vidya",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),

                      Container(child: Row(
                        children: [
                          Text('View all',style: TextStyle(color: Colors.blue),),
                          Icon(Icons.navigate_next,color: Colors.blue,)
                        ],
                      ))
                    ],
                  ),

                  Container(
                    height: 150,
                      width: double.maxFinite,
                      child: unilogoslider(fetchData())
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey
                          ),
                          child: Row(
                          children: [
                            unilogoslider(fetchData())
                          ],
                        ),),

                      ],
                    ),
                  )


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
