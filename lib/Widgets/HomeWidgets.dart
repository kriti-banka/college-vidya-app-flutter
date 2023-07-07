
import 'package:collegevidya/Screens/Domain%20Courses/specialization.dart';
import 'package:collegevidya/Screens/Domain%20courses/Courses.dart';
import 'package:collegevidya/models/Banner%20Model.dart';
import 'package:collegevidya/models/Courses%20Model.dart';
import 'package:collegevidya/models/Experts model.dart';
import 'package:collegevidya/models/state%20model.dart';
import 'package:flutter/material.dart';
import 'package:collegevidya/models/University_list model.dart';
import 'package:flutter_svg/flutter_svg.dart';

//BANNER
Widget banners(Banners data,BuildContext context){
  return ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(30)),
    child: Image.network('${data.image}', fit: BoxFit.fill,),
  );
}



//UNIVERSITY LOGO
Widget universitylogo(Unilistmodel data,BuildContext context){

  return
      Container(
        margin: EdgeInsets.fromLTRB(10,0,8,0),
        height: 60,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),

        child:
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network('${data.logo}',scale: 2,)),
            // Text('${data.name}'),
      );
}


//EXPERTS

// Widget experts(Experts data,BuildContext context){
//   return ClipRRect(
//     borderRadius: BorderRadius.all(Radius.circular(25)),
//     child: ColorFiltered(
//       colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
//       child: Image.network(
//     "${data.profileImage}",fit: BoxFit.cover,
//       ),
//     ),
//   );
// }

Widget experts(Experts data, BuildContext context){
  return Container(
    // color: Colors.white,
    height: 120,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.all(Radius.circular(8))
    ),

    child: Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network('${data.profileImage}',height: 80, fit:BoxFit.fill)
            ],
          ),
          Text('${data.name}'),
          Text('${data.designation}')
        ],
      ),
    ),
  );
}

//DOMAIN
Widget Domaindata(Domain domain,BuildContext context){

  return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context)=> courses(domain: domain)));
          },
    child:
      Text("${domain.name}",
          style: TextStyle(color: Colors.black, fontSize: 12),
          textAlign: TextAlign.center,
      ),
        style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10))),
        );
  }


  //COURSES
Widget Coursedata(Course course,BuildContext context){
  return  Stack(
    children: [
      Container(
        margin: EdgeInsets.only(left: 20),
        height: 180,
        width: 160,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.blue[900],
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> specialization(course: course)));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 25,
                  child: Text(
                    "${course.duration}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orangeAccent[100]),
                ),

                Container(
                  child: Column(
                    children: [

                      SvgPicture.network('${course.icon}',width: 25,),
                      Text(
                        '${course.name}',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Container(
                  child: 
                  Text(
                    'Compare ${course.universityCount} universities',
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
  );
}


//SPECIALISATION
Widget Specializationdata(Specialization specialization,BuildContext context){
  return Container(
    height: 110,
    width: 110,
    child: ElevatedButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network('${specialization.icon}',width: 30,),
          Text(
            "${specialization.name}",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          backgroundColor: Color(0xffE1E5F2)),
    ),
  );
}