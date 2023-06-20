import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggered_GridView extends StatelessWidget{

var images=["https://images.pexels.com/photos/13233235/pexels-photo-13233235.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/9908010/pexels-photo-9908010.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/15534502/pexels-photo-15534502.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/13336085/pexels-photo-13336085.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/14014940/pexels-photo-14014940.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/13261381/pexels-photo-13261381.jpeg?auto=compress&cs=tinysrgb&w=600"
           ];
var text=["Nature","Mysteries of Universe","An Empire State","Earth","My Story","Aesthetic"];
var date=["20 june 2023","10 may 2023","19 june 2023","9 april 2023","12 july 2022","5 june 2023"];
var name=["Carl Sagan","Earnest Hemingway","Vincet van","Jaedan John","Harry Slopes","Tohan Jhon"];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Staggered GridView"),),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 2,
            children: List.generate(6, (index) => StaggeredGridTile.count(
              
              crossAxisCellCount: 4, mainAxisCellCount: 4, 
              child: Card(
                child: Column(children: [
                  Container(
                  
                    height: 200,
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image:DecorationImage(
                      image: NetworkImage(images[index])
                      )
                      )
                      ),
              
                      Text(text[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      Text(date[index]),
                      Text(name[index])
                      ],
                      ),
              ))),
            ),)
      );
  }
}