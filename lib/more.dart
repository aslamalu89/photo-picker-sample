

import 'package:flutter/material.dart';
import 'package:task4/events.dart';
import 'package:task4/profile.dart';

class Mores extends StatefulWidget {
  const Mores({super.key});

  @override
  State<Mores> createState() => _MoresState();
}

class _MoresState extends State<Mores> {
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
      body:ListView(
        children: [
      Column(
      children: [
      Row(
      children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Events",style:TextStyle(fontSize: 20),),
    ),
    ],
    ),
    Column(
    children: [
    SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 150,
      width: 150,
      decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset("assets/img_1.png",fit: BoxFit.fill,),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 150,
      width: 150,
      decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset("assets/img_2.png",fit: BoxFit.fill,),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 150,
      width: 150,
      decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset("assets/img_3.png",fit: BoxFit.fill,),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 150,
      width: 150,
      decoration: BoxDecoration(
      color: Colors.white70,
      borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset("assets/img_4.png",fit: BoxFit.fill,),
      ),
    )
    ],
    ),

    ),
      Row(
        children: [
          Text("Birthday event",style:TextStyle(fontSize: 20),),
        ],
      ),
      Row(
        children: [
          Container(height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset("assets/img_5.png",fit: BoxFit.cover,)),
        ],
      )
    ],
    )
    ],
      )
    ]));
  }
}
