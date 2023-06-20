import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: list_contacts(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class list_contacts extends StatelessWidget {
  var img = [
    "https://images.unsplash.com/photo-1638016329956-1127c6e4c96f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1673443314719-aa8948a09a3f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM4fHRvd0paRnNrcEdnfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1674082820891-f57cf4a3e233?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE2Nnx0b3dKWkZza3BHZ3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
  ];
  var name = ["Mathew", "Anna", "Henry", "John", "Jennah", "Mat Armstrong"];

  var num = [
    "9847131016",
    "9567609975",
    "9847614304",
    "9567874304",
    "9633920969",
    "9995917934"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT LIST"),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
             // color: Colors.grey,
              child: ListTile(
                  leading:CircleAvatar(
                    radius: 40,
                      backgroundImage: NetworkImage(img[index])
                    ),
                  title:Text(name[index]),
                  subtitle: Text(num[index]),
                  trailing:Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [ 
                    Icon(Icons.call),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Icon(Icons.message),
                    ),
                    Icon(Icons.arrow_right)],
                    )
                    ),
            );
                
          }),
      );
  }}