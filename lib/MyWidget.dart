//we can create customised widget and can use anywhere in a class if needed
import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget{

  final Color? bgcolor;
  final IconData icons;
  VoidCallback? onPress;
  String? label;

  MyCustomWidget({        //CONSTRUCTOR
    this.bgcolor=Colors.purple,
    required this.icons,
    this.onPress,
    this.label="HELLO"
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        title: Text(label!),
        leading: Icon(icons),
        onTap: onPress,
      ),
    );
  }
}