import 'package:flutter/material.dart';
import 'package:task4/events.dart';
import 'package:task4/homepg.dart';
import 'package:task4/profile.dart';

import 'more.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({Key? key}) : super(key: key);

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}
class _BottomnaviState extends State<Bottomnavi> {
  int myIndex=0;
  final Pages =[
    Homepg(),
    Events(),
    Mores(),
    Profiles()


  ];
  void onTabTapped(int index) {
    setState(() {
      myIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),
              label: "Home",backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,),
            label: "Events",),
          BottomNavigationBarItem(icon: Icon(Icons.more,),
              label: "More"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),
              label: "Profile")
        ],
      ),
    );
  }
}
