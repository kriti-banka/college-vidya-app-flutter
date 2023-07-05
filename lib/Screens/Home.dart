import 'package:collegevidya/Screens/Experts.dart';
import 'package:collegevidya/Widgets/homeslider.dart';
import 'package:collegevidya/Widgets/story.dart';
import 'package:collegevidya/models/University_list model.dart';
import 'package:flutter/material.dart';
import 'package:collegevidya/Connections/Connections.dart';



import 'package:http/http.dart' as http;


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late Unilistmodel data;




  @override
  Widget build(BuildContext context) {

    List<String> perks = [
      "Easiest Compare & Choose", "Unbiased Counseling Guidance",
      "Counseling From Verified Experts", "Telephonic & Video Counceling",
      "All Topic Video Library", "Financial Assitance"
    ];

    List<String> perkicons =[
      'assets/icons/Perk1.png','assets/icons/perk2.png','assets/icons/perk3.png',
      'assets/icons/perk4.png','assets/icons/perk5.png','assets/icons/perk6.png'
    ];

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: (){Scaffold.of(context).openDrawer();},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,

        actions: [


          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => story()));
              },
            child: CircleAvatar(
              radius: 12,
              backgroundImage: NetworkImage('https://img.freepik.com/premium-vector/floral-botanical-alphabet-vintage-hand-drawn-monogram-letter-s-letter-with-plants-flowers_538636-276.jpg'),
            ),
          ),

          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_call,
                color: Colors.black,
              )),
        ],
      ),
      extendBodyBehindAppBar: true,


      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          //CONTAINER ROTATE
          Positioned(

            child: Transform.rotate(
              angle: -0.38,
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(''),
                width:700,
                height: 500,
                decoration: BoxDecoration(
                    color: Color(0xff698BFB).withOpacity(0.3),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
          ),

          //ALL CONTENT IN SINGLECHILDSCROLLVIEW
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // USER NAME
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'Hi User!',
                    ),
                    alignment: Alignment.topLeft,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  // BANNER
                  bannerslider(BannersData()),


                  SizedBox(
                    height: 10,
                  ),

                  // SUGGEST ME IN TWO MINUTES
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.blue,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/suggest');
                        },
                        child: Text(
                          "        Suggest University in 2 minutes       ",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        )),
                  ),

                  SizedBox(
                    height: 20,
                  ),


                  Domaingrid(fetchdomaindata()),


                  SizedBox(height: 15,),

                  //UNIVERSITY ON CLG VIDYA
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("    University on College Vidya",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),

                      Container(child: GestureDetector(
                        child: Row(
                          children: [
                            Text('View all',style: TextStyle(color: Colors.blue),),
                            Icon(Icons.navigate_next,color: Colors.blue,)
                          ],
                        ),
                        onTap: (){
                        },
                      ))
                    ],
                  ),

                  SizedBox(height: 10,),
                  unilogoslider(sliceData1()),
                  SizedBox(height: 10,),
                  unilogoslider(sliceData2()),
                  SizedBox(height: 10,),
                  unilogoslider(sliceData3()),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("    College Vidya Experts",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),

                      Container(child: GestureDetector(
                        child: Row(
                          children: [
                            Text('View all',style: TextStyle(color: Colors.blue),),
                            Icon(Icons.navigate_next,color: Colors.blue,)
                          ],
                        ),
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context)=> experts()));
                        },
                      ))
                    ],
                  ),

                  SizedBox(height: 20,),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 370,
                        decoration: BoxDecoration(
                          color:Color(0xff698BFB).withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                      ),
                      expertsslider(expertsdata()),



                    ],
                  ),

                  SizedBox(height: 30,),

                  Container(
                    width: 360,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.blue.shade50.withOpacity(1),
                            blurRadius: 5,
                            spreadRadius: 1,

                            offset: Offset(0,5))]
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Text("Verify",style: TextStyle(
                                    color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,fontSize: 20
                                ),),
                                Text(' Universities',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,fontSize: 20),)
                              ],),
                              Row(children: [
                                Text('in',style: TextStyle(color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,fontSize: 20),),
                                Text(' just',style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.bold,fontSize: 20),),
                                Text(' Simple Clicks',style: TextStyle(color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,fontSize: 20),)
                              ],)
                            ],
                          ),
                        ),

                        Container(
                          width: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                            ),
                              onPressed: (){},
                              child: Text('Verify')),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Perks",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),

                  SizedBox(height: 20,),


                  Container(
                    height: 300,
                    // color: Colors.blue,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      // physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3
                        ),
                        itemCount: 6,
                        itemBuilder: (BuildContext context,int index){
                          String perk = perks[index];
                          String perkicon = perkicons[index];
                          List<Color> colors = [
                            Color(0xffA0F5CE),
                            Color(0xffFFD3C0),
                            Color(0xffF19CDD),
                            Color(0xffDFC1FF),
                            Color(0xffA5DFF7),
                            Color(0xffFFC0C0),
                         ];
                          Color boxColor = colors[index % colors.length];

                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: boxColor,
                            ),
                            margin: EdgeInsets.only(left: 10,right: 10,bottom: 15),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.fromLTRB(10,0,5,0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(perkicon,width: 40,),
                                  Text(perk,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                            )),

                          );
                        }),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
