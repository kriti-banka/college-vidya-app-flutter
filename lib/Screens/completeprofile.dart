import 'package:flutter/material.dart';

class completeprofile extends StatefulWidget {
  const completeprofile({Key? key}) : super(key: key);

  @override
  State<completeprofile> createState() => _completeprofileState();
}

class _completeprofileState extends State<completeprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,100,0,0),
          child: Center(
            child: Column(children: [
              Text("Complete Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 20,),
              CircleAvatar(backgroundColor: Colors.blue,radius: 50,),

              SizedBox(height: 40,),

              SizedBox(width: 350,height: 50,child: TextField(
                decoration: InputDecoration(
                  hintText: 'Full name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      ),
                ),
              )
              ),

              SizedBox(height: 10,),

              SizedBox(width: 350,height: 50,child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
              ),


              SizedBox(height: 10,),

              SizedBox(width: 350,height: 50,child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.fromLTRB(28,0,0,0),
                child: Row(children: [

                  SizedBox(width: 170,height: 50,child: TextField(
                    decoration: InputDecoration(
                      hintText: 'DD/MM/YYYY',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                  ),

                  SizedBox(width: 10,),

                  SizedBox(width: 170,height: 50,child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Gender',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  )
                  ),

                ],),

              ),

              SizedBox(height: 10,),

              SizedBox(width: 350,height: 50,child: TextField(
                decoration: InputDecoration(
                  hintText: 'Country',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
              ),


              SizedBox(height: 10,),

              SizedBox(width: 350,height: 50,child: TextField(
                decoration: InputDecoration(
                  hintText: 'Major',
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                  ),
                ),
              )
              ),

              SizedBox(height: 40,),

              SizedBox(width: 350,height: 50,child:
              ElevatedButton(
                child: Text('Submit',style:
                TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),),
                onPressed: (){
                  Navigator.pushNamed(context,'/home');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff001149),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
              )
              ),


            ],)),
        ),
      ),
    );
  }
}
