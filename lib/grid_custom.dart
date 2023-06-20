import 'package:flutter/material.dart';

class gridCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid custom"),
        ),
        body: GridView.custom(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
            childrenDelegate: SliverChildBuilderDelegate( childCount: 18,
              (context, index) {
              return const Image(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrKrfZR8I81nQi5KWF9wgo8hpv-uzXZqYO2Q&usqp=CAU"));
            },
            )
            )
            );
  }
}
