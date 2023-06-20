import 'package:flutter/material.dart';
import 'package:flutter_application_1/grid_extend.dart';
import 'package:flutter_application_1/list_with_custom.dart';

void main(){
  runApp(MaterialApp(
  home:myhome(),
routes:{
  'grid':(context)=>gridextend(),
  'list':(context)=>list_custom(),
}
  ));
}

class myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [

        ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('grid');
      }, child: Text('to grid page')),

        ElevatedButton(onPressed: (){
        Navigator.of(context).pushNamed('list');
      }, child: Text('to list page')),
      
      ],) ,
    );
  }
}
