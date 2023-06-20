import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  List screens=[
    Center(child: Text("Home"),),
    Center(child: Text("Account"),),
    Center(child: Text("Search"),),
    Center(child: Text("Menu"),),
  ];
  int index=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect( //used to get border radius- wrp wth widget nd renamed
      borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //or .shifting
          selectedItemColor: Colors.pink,
          backgroundColor: Colors.teal,
          currentIndex: index,
          onTap: (taped_index){
            setState(() {
              index=taped_index;
            });
          },
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_sharp),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
              ]),
      ),

            body: screens[index],
    );
  }
}
