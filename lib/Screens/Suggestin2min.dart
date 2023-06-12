import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suggest extends StatefulWidget {
  const suggest({Key? key}) : super(key: key);

  @override
  State<suggest> createState() => _suggestState();
}

class _suggestState extends State<suggest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Suggest University",style: TextStyle(color: Colors.black,fontSize: 18),),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back,color: Colors.black,),
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/navigation');
          },
        ),
      ),
    );
  }
}
