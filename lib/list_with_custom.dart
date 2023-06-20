

import 'package:flutter/material.dart';

class list_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CUSTOM LIST"),
          leading: Icon(Icons.arrow_back_ios_outlined),
          actions: [Icon(Icons.shopping_cart)],
        ),
        body: ListView.custom(
          //childrenDelegate:SliverChildListDelegate(

          ///CREATING LIST OF CARDS WAY 1
          //  List.generate(50 , (index){
          //   return Card(
          //     color:Colors.purple,
          //     child:Text("card 1"),
          //   );
          //  })

          ///CREATING LIST OF CARDS WAY 2
          // [
          //   Card(child: Text("DATA 1"),color: Colors.purpleAccent,),
          //   Card(child: Text("DATA 2"),color: Colors.deepPurple,),
          //   Card(child: Text("DATA 3"),color: Colors.red,),
          //   Card(child: Text("DATA 4"),color: Colors.blue,)
          // ]
          // )
          childrenDelegate: SliverChildBuilderDelegate((context, index) {  //build unlimitedly
            return Card(
              color: Colors.grey[800],
              child: Text("card 1"),
            );
          })
        ),
    );
  }}
            