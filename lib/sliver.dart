import 'package:flutter/material.dart';

class SliverEx extends StatelessWidget {

  var color=[1000,900,800,700,600,500,400,300,100,50];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custom AppBar"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search Something",
                        prefixIcon: Icon(Icons.search))),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) => Container(
            height: 80,
            color: Colors.pink[color[index]],
          ),
          childCount: 10))
        ],
      ),
    );
  }
}
