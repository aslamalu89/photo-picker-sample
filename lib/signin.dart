import 'package:flutter/material.dart';
import 'package:task4/bottom.dart';
import 'package:task4/signup.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView( // Wrap the Column with a ListView
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Email"),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Email",
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Password"),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Enter Your password",
            ),
            obscureText:true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () {  }, child: Text("forget password?"),)
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavi()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.tealAccent),
                child: Text("Sumbit"),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                  },
                  child: Text("Signup"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Signin"),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50,
                  width: 50,
                  child: Image.asset("assets/facebook.png")),
              Container(height: 50,
                  width: 50,
                  child: Image.asset("assets/google.png")),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have any account ?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));

              }, child: Text("Sign up"))
            ],
          )


        ],
      ),
    );
  }
}
