

import 'package:collegevidya/Widgets/uni_logo.dart';
import 'package:flutter/material.dart';
import 'package:collegevidya/models/University_home_page_list.dart';

Widget unilogoslider(Future future){
  return FutureBuilder(
    future: future,
    builder: (context, AsyncSnapshot snapshot){
      // print(snapshot.hasData);
      // return Text("hi");
        if(snapshot.connectionState==ConnectionState.waiting || future==null)
        {
          return Center(
            child: CircularProgressIndicator());
        }
        else{
          if(snapshot.hasData){
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){

                  return universitylogo(unilistmodelFromJson(snapshot.data[index]), context);
                  // return Text("hi");
                }
            );
          }
          else {
            return Center(child: Text("no data"),);
          }
      }
    }
  );
}

