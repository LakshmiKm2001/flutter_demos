import 'package:flutter/material.dart';

class gridcount extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: Text("Grid Count")),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      children:List.generate(15, (index) => Card(
        child: Center(child: Text("HELLO")),
      ))),
      
     );
  }

}