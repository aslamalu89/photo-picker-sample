import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task4/events.dart';
import 'dart:io';

import 'package:task4/more.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  File? _image;
  final picker = ImagePicker();

  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(currentAccountPicture: Icon(Icons.person,size: 58,color: Colors.white70,),
                  accountName: Text("jane smith"), accountEmail: Text("view profile")),
              ListTile(
                title: Text("Events"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Events()));
                },
                leading: Icon(Icons.event),
              ),
              ListTile(
                title: Text("more"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Mores()));
                },
                leading: Icon(Icons.more),
              ),
              ListTile(
                title: Text("profile"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profiles()));
                },
                leading: Icon(Icons.person),
              ),

            ],
          ),
        ),

      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Profile:', // Added label
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  _image != null
                      ? Image.file(
                    _image!,
                    width: 200,
                    height: 200,
                  )
                      : Image.asset(
                    "assets/img.png",
                    width: 100,
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: pickImage,
                    child: Text("gallery"),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Name"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: "Name"
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Occupation"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: "Occupation"
                          ),
                        ),
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Education"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: "Education"
                          ),
                        ),
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Address"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: "Address"
                          ),
                        ),
                      )

                    ],
                  )
                ],

              ),
            ),


          ),

        ],
      )


    );
  }
}