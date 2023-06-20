//stack is placed one on the another
//container wrapd with widget and rename to positioned
 import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(child: Stack(
        children: [
          Container(color: Colors.pink,width: 500,height: 500,),
          Positioned(
            left: 20,bottom: 50,
            child: Container(color: Colors.purple,width: 300,height: 300,)), 
          Positioned(
            left: 170,top:30,
            child: Icon(Icons.star,color: Colors.yellow,size:50)),
                  ],
      ),),
     );
  }
  
 }