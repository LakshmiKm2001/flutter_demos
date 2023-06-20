import 'package:flutter/material.dart';

class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     Future<bool> showalert() async {
    return await showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text('exit!!'),
        content: Text("do u want to exit ?"),
        actions: [
          ElevatedButton(onPressed: (){
          Navigator.of(context).pop(true);
        }, child: Text("yes")),

         ElevatedButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, child: Text("no")),
        
        ],
      );
    });
  }

    return WillPopScope(
     onWillPop: showalert, //TO EXIT FROM CORRESPONDING SCREEN
    child: Scaffold(
      body: Center(child: Text("press back button for exit")),
   ),
   );
  }}