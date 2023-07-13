import 'package:flutter/material.dart';

class verifyuniversity extends StatefulWidget {
  const verifyuniversity({Key? key}) : super(key: key);

  @override
  State<verifyuniversity> createState() => _verifyuniversityState();
}

class _verifyuniversityState extends State<verifyuniversity> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: (){
            Navigator.pushNamed(context, '/navigation');
            },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),

        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('verify University',
              style: TextStyle(color: Colors.black),),


            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text('Filter',style: TextStyle(fontSize: 15,color: Colors.black),),
            ),

          ],
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],


        bottom: TabBar(

            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.blue,width: 3.5),),
            unselectedLabelColor: Colors.black,

            tabs: [

              Tab(text: "Online",),
              Tab(text: "Distance",),
              Tab(text: "WES",),
              Tab(text: "Board",),
              Tab(text: "Regular",)

            ]),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
