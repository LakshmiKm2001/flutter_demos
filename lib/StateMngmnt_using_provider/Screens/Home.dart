import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: HomeSM(),
  ));
}

class HomeSM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                label: Text("Go to my Wishlist")),

            SizedBox(height: 20,),

            Expanded(child: Center(child: ListView.builder(itemBuilder: (context,index){
              return Card(child:ListTile(
                title: Text(""),
                subtitle: Text(""),
                trailing: Icon(Icons.favorite),
              ));
            }),))
          ],
        ),
      ),
    );
  }
}
