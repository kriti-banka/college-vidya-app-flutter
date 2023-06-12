import 'package:flutter/material.dart';
import 'package:collegevidya/models/University_home_page_list.dart';

Widget universitylogo(Unilistmodel data,BuildContext context){

  return  Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey
          ),
          child: Row(
            children: [
              Text("hi"),
              // Image.network('data:${data.logo} '),

              // Text('${}')
              Text('${data.name}')
            ],
          ),),

      ],
    ),
  );
}