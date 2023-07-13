import 'package:carousel_slider/carousel_slider.dart';
import 'package:collegevidya/Widgets/HomeWidgets.dart';
import 'package:collegevidya/models/Banner%20Model.dart';
import 'package:collegevidya/models/Experts model.dart';
import 'package:flutter/material.dart';
import 'package:collegevidya/models/University_list model.dart';
import '../models/Courses Model.dart';


//BANNER SLIDER
Widget bannerslider(Future future){
  return Container(
    height: 170,
    width: 400,
    child: FutureBuilder(
      future: future,
      builder: (context, AsyncSnapshot snapshot){
        if(snapshot.connectionState==ConnectionState.waiting || future==null)
        {
          return Center(
              child: CircularProgressIndicator());
        }
        else{
          if(snapshot.hasData){
            return CarouselSlider.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,index, realIndex){
                  return banners(Banners.fromJson(snapshot.data[index]), context);
                },
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 170,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                ));
          }
          else {
            return Center(child: Text("no data"),);
          }
        }
      },
    ),
  );
}

//UNIVERSITY LOGO SLIDER
Widget unilogoslider(Future future){

  return Container(
    height: 50,
    width: double.maxFinite,
    child: FutureBuilder(
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
              return CarouselSlider.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context,index, realIndex){
                    return universitylogo(Unilistmodel.fromJson(snapshot.data[index]), context);
                  },
                  options: CarouselOptions(
                    viewportFraction: .29,
                    height: 150,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5) ,
                  ));

            }
            else {
              return Center(child: Text("no data"),);
            }
        }
      }
    ),
  );
}

//EXPERTS PROFILE SLIDER
Widget expertsslider(Future future){
  return Container(
    // height: 200,
    // width: double.maxFinite,
    // width: 380,
    child: FutureBuilder(
        future: future,
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.connectionState==ConnectionState.waiting || future==null)
          {
            return Center(
                child: CircularProgressIndicator());
          }
          else{
            if(snapshot.hasData){
              return CarouselSlider.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context,index, realIndex){
                    return experts(Experts.fromJson(snapshot.data[index]), context);
                  },
                  options: CarouselOptions(
                    viewportFraction: .4,
                    height: 180,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    // autoPlayCurve: Curves.easeIn,

                  ));

            }
            else {
              return Center(child: Text("no data"),);
            }
          }
        }
    ),
  );
}


Widget Domaingrid(Future future){
  return FutureBuilder(
    future: future,
    builder: (context, AsyncSnapshot snapshot){
      if(snapshot.connectionState==ConnectionState.waiting){
        return Center(
          child: CircularProgressIndicator(),
        );
      }
      else{
        if (snapshot.hasData){
          return GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
                crossAxisSpacing: 10,
                childAspectRatio: 10/10,
                mainAxisSpacing: 10
          ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                return Domaindata(Domain.fromJson(snapshot.data[index]), context);
              });
        }
        else{
          return Center(
            child: Text("No data"),
          );
        }
      }
    },
  );
}


Widget Domain_drawergrid(Future future){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10),
    height: 220,
    width: 300,
    child: FutureBuilder(
      future: future,
      builder: (context, AsyncSnapshot snapshot){
        // print(snapshot.hasData);
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else{
          if (snapshot.hasData){
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 8/8,
                    mainAxisSpacing: 8
                ),
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  return Domaindata(Domain.fromJson(snapshot.data[index]), context);
                });
          }
          else{
            return Center(
              child: Text("No data"),
            );
          }
        }
      },
    ),
  );
}


Widget Coursegrid(List<Course> courses){
  return Container(
    // margin: EdgeInsets.only(left: 10,right: 10),
    child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: 10/10,
      mainAxisSpacing: 8
  ),
  itemCount: courses.length,
  itemBuilder: (context,index){
  return Coursedata(courses[index], context);
  }),
  );
}

Widget specializationgrid(List<Specialization> specialization){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10),
    child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            childAspectRatio: 10/10,
            mainAxisSpacing: 8
        ),
        itemCount: specialization.length,
        itemBuilder: (context,index){
          return Specializationdata(specialization[index], context);
        }),
  );
}


