import 'package:flutter/material.dart';
import 'package:task4/profile.dart';

import 'more.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  DateTime? selectedDate;
  String _locationMessage="";
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
      body: Column(
        children: [
          Row(
            children: [
              Text("Current date",style: TextStyle(fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:Container(
                  height: 50,
                  width:200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    onTap: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1995),
                        lastDate: DateTime(2025),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          selectedDate = pickedDate;
                        });
                        print(
                            "Date selected: ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}");
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
    ])
    );
  }
}
