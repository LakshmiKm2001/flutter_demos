import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20btwn%20screens/second%20screen.dart';
import 'dummy data.dart';

void main(){
  runApp(MaterialApp(
    home: first(),
    routes:{"second":(context)=>secondpage()} ,
  ));
}

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("My Home Page"),
    ),
    body: ListView(
      padding: EdgeInsets.all(15),
      children: dummyproduts.map((product){ //fetch values frm map
          return TextButton(
             onPressed: ()=>goTosecond(context, product["id"]),//id pssng coz to disply corresponding id details on nxt pge
              child: Text("${product["name"]}",style: TextStyle(fontSize: 20),
      ));})
    .toList()),//convert map to list
   );
  }
  
void goTosecond(BuildContext context, productId) {
  Navigator.pushNamed(context,"second",arguments: productId);
}
}