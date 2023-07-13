import 'package:collegevidya/models/Experts model.dart';
import 'package:flutter/material.dart';

Widget Expertcard(Experts data,BuildContext context){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    child:
    Row(
      children: [

        Image.network('${data.profileImage}',width: 150,height: 150,),

        SizedBox(width: 20,),

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${data.name}",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),),
              SizedBox(height: 10,),
              Text("${data.designation}"),

              SizedBox(height: 5,),

              // Container(
              //   width: 200,
              //   child: Text("B.Com (online) +24 more B.Com (online) +24 more B.Com (online) +24 more ",
              //   overflow: TextOverflow.ellipsis,),
              // ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.currency_rupee_outlined, color: Colors.blue[900]),
                        Text('99 Fee',style: TextStyle(color: Colors.blue[900]),)
                      ],
                    ),
                  ),

                  SizedBox(width: 70,),

                  Container(
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text('${data.rating}',style: TextStyle(color: Colors.white)),
                          Icon(Icons.star,color: Colors.white,size: 15,)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget Expertlist(Future future){
  return Container(
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
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  return Expertcard(Experts.fromJson(snapshot.data[index]), context);
                });
          }
          else {
            return Center(child: Text("no data"),);
          }
        }
      }
    ),
  );
}