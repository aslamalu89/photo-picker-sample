import 'package:flutter/material.dart';
import 'package:task4/events.dart';
import 'package:task4/more.dart';
import 'package:task4/profile.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
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
    );
  }
}
