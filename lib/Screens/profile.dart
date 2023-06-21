import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  XFile? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  // CroppedFile? _croppedFile;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
            child: Text('         Profile',
                style: TextStyle(color: Colors.white))),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      // bottomNavigationBar: BottomNavigation(screen_index: 3,),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Stack(
              children: [
                Image.asset('assets/image/drawer background.png',
                    fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 52,
                          backgroundColor: Colors.greenAccent,
                          child: CircleAvatar(
                            backgroundColor: Colors.blueAccent[100],
                            radius: 50,
                            backgroundImage: pickedFile == null ?
                            null :
                            FileImage(File(pickedFile!.path)),



                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 0,
                          child: Container(
                            height: 25,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                              ),
                              onPressed: (){
                                takephoto(ImageSource.gallery);

                              },

                              child: Row(
                                children: [
                                  Icon(Icons.edit,size: 15,color: Colors.blue,),
                                  Text('Edit',style: TextStyle(color: Colors.blue,fontSize: 15),)
                                ],
                              ),
                            ),
                          ))

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220),
                  child: Center(
                      child: Text(
                    "Avatar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  )),
                )
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,

                child: Column(
                  children: [

                    ListTile(
                      title: Text('Study Plans',style: TextStyle(color: Colors.black,fontSize: 18),),
                      trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      onTap: (){},
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),

                    ListTile(
                      title: Text('Study Plans',style: TextStyle(color: Colors.black,fontSize: 18),),
                      trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      onTap: (){},
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),

                    ListTile(
                      title: Text('Experience'
                        ,style: TextStyle(color: Colors.black,fontSize: 18),),
                      trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      onTap: (){},
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),

                    ListTile(
                      title: Text('Education',style: TextStyle(color: Colors.black,fontSize: 18),),
                      trailing: Icon(Icons.navigate_next,color: Colors.black,),
                      onTap: (){},
                    ),

                    Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),


                  ],
                ),
              ))
        ],
      ),
    );

  }

  Future<void> takephoto(ImageSource source) async {
    final pickedImage = await imagePicker.pickImage(source: source, imageQuality: 100);

    // pickedFile = File(pickedImage!.path);

    setState(() {
      pickedFile = pickedImage;
    });
  }
  


}


