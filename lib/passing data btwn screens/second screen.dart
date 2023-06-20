import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20btwn%20screens/dummy%20data.dart';

class secondpage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
//fetching the id frm the previous page
 final productId=ModalRoute.of(context)?.settings.arguments;

//fetch the product(map) frm dummydata corresponding to the id from previous page
 final product=dummyproduts.firstWhere((prdct)=>prdct["id"]==productId);

     return Scaffold(
      appBar: AppBar(title: Text("My Product"),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child:Column(
            children: [
           Image(
              image: NetworkImage(product["image"])),

          Text("${product["name"]}"),
          Text("${product["description"]}"),
          Text("${product["price"]}"),
          Text("${product["rating"]}"),],
          )
         ),
     ));
  }

}