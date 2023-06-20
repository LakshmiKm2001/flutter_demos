import 'package:flutter/material.dart';

class gridextend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Extend"),),
      body: GridView.extent(
      maxCrossAxisExtent: 70,
      mainAxisSpacing: 10,
      crossAxisSpacing: 20,
      children: [
        Container(child: Column(
          children: [
            Text("image 1"),
            Image.asset("assets/images/kindpng_7440257.png",width: 50,height: 40,)
          ],
        )),
         Container(child: Column(
          children: [
            Text("image 2"),
            Image.asset("assets/images/strawberry.png",width: 50,height: 40,)

      ],),
    )]));
  }

}