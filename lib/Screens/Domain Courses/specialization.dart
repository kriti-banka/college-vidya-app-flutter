import 'package:collegevidya/Widgets/homeslider.dart';
import 'package:collegevidya/models/Courses%20Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class specialization extends StatefulWidget {
  const specialization({Key? key,required this.course}) : super(key: key);
  final Course course;


  @override
  State<specialization> createState() => _specializationState();
}

class _specializationState extends State<specialization> {
  late Course course;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    course = widget.course;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "${course.name}",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
          // Navigator.pushReplacement(context,
          // MaterialPageRoute(builder: (context) => courses(domain: domain)));
          Navigator.pop(context);
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigation(screen_index: 0,),

      body: specializationgrid(course.specializations)
    );
  }
}
