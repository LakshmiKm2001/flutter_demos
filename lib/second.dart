import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title:  Text("LOGIN PAGE",)
      ),
      body: Column(children: [
        const Padding(
            padding:  EdgeInsets.only(top:40),
            child: Text("Login Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
         Padding(    //space towards edge for txtfield
            padding: EdgeInsets.only(left: 20,right: 20,top:30),
            child: TextField(
              decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),   //text field as box
              hintText:("username"),  
              labelText: ("USER"),
              icon: Icon(Icons.perm_contact_cal_rounded),  
             ),
           ), 
         ),
         Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: ("password"),
              labelText: ("PASSWORD"),
              icon:Icon(Icons.remove_red_eye_rounded)

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:30),
            child: ElevatedButton(onPressed: (){}, child: Text("Sign In")),
          ),
         const Padding(
            padding:  EdgeInsets.only(top:30),
            child: Text("Not a user..? Register Here..!"),
          )
        ],),
      );
  }

}