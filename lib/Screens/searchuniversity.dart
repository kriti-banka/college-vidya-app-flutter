import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class suggestuni extends StatefulWidget {
  const suggestuni({Key? key}) : super(key: key);

  @override
  State<suggestuni> createState() => _suggestuniState();
}

class _suggestuniState extends State<suggestuni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(CupertinoIcons.back),
        title: Text("Suggest University"),
      ),


    );
  }
}
