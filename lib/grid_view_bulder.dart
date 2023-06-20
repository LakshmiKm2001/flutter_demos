import 'package:flutter/material.dart';

class gridview_builder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Builder"),),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),//we can give spacing
       itemCount: 50,
       itemBuilder: (context,index){
        return Image(image: AssetImage("assets/images/kindpng_7440257.png"));
      }),
    );
  }
  
}