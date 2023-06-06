
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

Widget myDrawer(BuildContext context){
  return Drawer(
      backgroundColor:Colors.white ,
      child: Column(
        children: [
          Expanded(
            flex: 2,
          child: Container(
          color: Color(0xff001149),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Padding(
              padding: const EdgeInsets.fromLTRB(0,70,0,0),
              child: Container(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    SizedBox(height: 10,),
                    Text('Avatar Name',style: TextStyle(color: Colors.white),),
                    Text("Avatar@gmail.com",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
            Container(child: Row(
              children: [IconButton(onPressed: (){}, icon: Icon(Icons.toggle_off_outlined,color: Colors.white,)),
                Text("Theme",style: TextStyle(color: Colors.white),)],
            ),)

            ],
          ),
      )),

          Expanded(
          flex: 5,
          child:Container(
            color: Color(0xff001149),
            margin:EdgeInsets.only(top:2),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.front_hand_outlined,color: Colors.white,),
                  title: Text("Search university in 2 minutes",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){
                    Navigator.pushNamed(context, '/suggest');
                  },
                ),

                ListTile(
                  leading: Icon(CupertinoIcons.building_2_fill,color: Colors.white,),
                  title: Text("Search by Courses",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.headset_mic_outlined,color: Colors.white,),
                  title: Text("College Vidya Experts",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.saved_search,color: Colors.white,),
                  title: Text("verify universities",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.fact_check_outlined,color: Colors.white,),
                  title: Text("FAQs",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.comment_bank_outlined,color: Colors.white,),
                  title: Text("Blogs",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.video_collection_sharp,color: Colors.white,),
                  title: Text("Youtube videos",
                    style: TextStyle(color: Colors.white),),
                  onTap: (){},
                ),
              ],
            ),
          ) ),

          Expanded(
            flex: 1
          ,child: Container(
          margin:EdgeInsets.only(top:1),
            color: Color(0xff001149),

            child: ListTile(
              leading: Icon(Icons.login,color: Colors.white,size: 30,),
              title: Text("Logout",style: TextStyle(color: Colors.white,
                  fontSize: 20,fontWeight: FontWeight.bold),),
             onTap: (){
                Navigator.pushNamed(context, '/signin');
             },
            )
          ))
        ],
      ),
  );
}