import 'package:flutter/material.dart';

class simplealert extends StatefulWidget{
  @override
  State<simplealert> createState() => _simplealertState();
}

class _simplealertState extends State<simplealert> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("ALERT"),),
    body:Center(child: ElevatedButton(onPressed: (){
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("EXIT!!!"),
          content: Text("Do u wnt to exit"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("yes")),   
            TextButton(onPressed: (){
               Navigator.of(context).pop();
            }, child: Text("no")),    
            TextButton(onPressed: (){
               Navigator.of(context).pop();
            }, child: Text("cancel")),
            ],
        );
      });
    }, child: Text("show alert")))
   );
  }
}