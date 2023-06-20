import 'package:flutter/material.dart';

class grid_view extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar:AppBar(title:Text("Grid View 1")),

      ///SliverGridDelegateWithFixedCrossAxisCount
      // body:GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),//no.of rows-4
      // children: List.generate(20, (index){
      //      return Card(
      //       child: Center(child: Image(image: NetworkImage("https://static.vecteezy.com/packs/media/photos/term-bg-1-34fe4c59.jpg"))),);
      // }))

      ///SliverGridDelegateWithMaxCrossAxisExtent   
         body: GridView(gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 70,
          mainAxisSpacing : 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.0),
         children:List.generate(10, (index){
          return const Card(
            child: Center(child: Image(image: AssetImage("assets/icons/icon.png"))),
          );
         })),
     );
  }}