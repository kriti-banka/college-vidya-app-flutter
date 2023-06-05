import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, "/login");
        },icon: Icon(CupertinoIcons.back,color: Colors.black,),),
        // leading: Icon(CupertinoIcons.back,color: Colors.black,),
      ),

      body:
        Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(90, 100, 0, 0),
                child: Row(
                  children: [
                    Text("College",style: TextStyle(color: Colors.blue,fontSize: 35),),
                    Text('Search',style: TextStyle(color: Colors.black,fontSize: 35),)
                  ],
                ),
              ),
              Text("#ChunoWahiJoHaiSahi"),

              SizedBox(height: 60,),
              SizedBox(width: 300,height: 55,
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (value){},
                onSubmitted: (value){},
                decoration: InputDecoration(
                            filled: true,fillColor: Colors.grey[350],
                            suffixIcon: Icon(CupertinoIcons.search_circle_fill,color: Colors.white,size: 47,),
                            hintText: 'Type here',
                            hintStyle: TextStyle(fontSize: 13,color: Colors.white),


                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                borderSide: BorderSide.none
                            )),
              ),)
            ],
          ),
        )
      // Container(height: 55,child: SizedBox(width: 340,
      //   child: Padding(
      //     padding: const EdgeInsets.fromLTRB(0,7,0,0),
      //
      //     //TEXT FIELD AND ICON
      //     child: TextField(
      //
      //       style: TextStyle(color: Colors.white),
      //       onChanged:(value){},
      //       onSubmitted: (value){},
      //       decoration: InputDecoration(
      //           filled: true,fillColor: Colors.grey,
      //           suffixIcon: Icon(CupertinoIcons.search_circle_fill,color: Colors.white,size: 47,),
      //           hintText: 'Type here',
      //           hintStyle: TextStyle(fontSize: 13,color: Colors.white),
      //
      //
      //           border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(100)),
      //               borderSide: BorderSide.none
      //           )),
      //     ),
      //   ),
      // ),),
    );
  }
}
