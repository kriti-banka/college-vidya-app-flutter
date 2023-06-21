import 'package:collegevidya/models/Courses%20Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Widgets/homeslider.dart';

class courses extends StatefulWidget {
  const courses({Key? key, required this.domain}) : super(key: key);
  final Domain domain;

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {

  late Domain domain;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    domain = widget.domain;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text("${domain.name}",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/navigation');
          },
        ),
      ),

      body: Coursegrid(domain.courses),

    );
  }
}
