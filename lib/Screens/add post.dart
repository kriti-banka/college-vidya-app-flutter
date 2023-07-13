import 'package:flutter/material.dart';

class addpost extends StatefulWidget {
  const addpost({Key? key}) : super(key: key);

  @override
  State<addpost> createState() => _addpostState();
}

class _addpostState extends State<addpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close_rounded,color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add Post',style: TextStyle(color: Colors.black),),
            GestureDetector(
              onTap: (){},
              child: Text("Post",style: TextStyle(color: Colors.grey),),
            )
          ],

        ),

      ),


      body: Column(
        children: [
          Divider(
            color: Colors.grey[350],
            thickness: 1,
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "What's on your Mind?",
                border: InputBorder.none
              ),
              maxLines: null,
            ),
          ),

          
        ],
      ),
    );
  }
}
