import 'package:flutter/material.dart';

class community extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: SizedBox(
              width: 400,
               child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Color.fromARGB(255, 189, 188, 188),
                            child: Icon(Icons.people),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 50,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color.fromARGB(255, 68, 155, 152),
                          child: Icon(Icons.add,size: 20,)),
                      ),
                       Positioned(
                        top: 25,
                        left: 82,
                        child: Text("New Community",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                      ],
                  ),
             ),
    );
  }

}