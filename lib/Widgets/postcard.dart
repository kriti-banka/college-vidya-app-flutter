import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget Postcard(BuildContext context) {
  return Container(
    // height: 200,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Avatar',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        Text('Avatar@gmail.com')
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ListTile(
                                leading: new Icon(Icons.share),
                                title: new Text('Share'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading:
                                    new Icon(Icons.bookmark_border_outlined),
                                title: new Text('Bookmark'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: new Icon(Icons.flag),
                                title: new Text('Report'),
                                onTap: () {},
                              ),
                            ],
                          );
                        });
                  },
                  icon: Icon(CupertinoIcons.ellipsis))
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                        'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                        'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                  )),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: Colors.grey[350],
                height: 5,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.smiley,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {

                          },
                        ),
                        GestureDetector(
                            child: Text(
                          'React',
                          style: TextStyle(color: Colors.grey[600]),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.comment_outlined,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {},
                        ),
                        GestureDetector(
                            child: Text(
                          'Comment',
                          style: TextStyle(color: Colors.grey[600]),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Colors.grey[600],
                          ),
                          onPressed: () {},
                        ),
                        GestureDetector(
                            child: Text(
                          'Share',
                          style: TextStyle(color: Colors.grey[600]),
                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey[400],
          thickness: 2,
          height: 10,
        )
      ],
    ),
  );
}


