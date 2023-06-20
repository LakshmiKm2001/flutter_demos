//unknown count of children - listview.builder

import 'package:flutter/material.dart';

class Listview_builder extends StatelessWidget{

  var datas=<String>['Data 1','Data 2','Data 3','Data 4','Data 5'];
  var color=<int>[800,700,500,300,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: (Text("ListView with Builder"))),
       body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (BuildContext,index){
           return Container(
            height: 150,
            color: Colors.red[color[index]],
            child: Text(datas[index],style:TextStyle(fontSize: 25),),
           );
        }),
      );
    }
}
//ListView.Seperator - 
//separatorBuilder:(BuildContext context,int index){
 // return Divider(
 //   thickness:10,color:colors.green[color[index]])}