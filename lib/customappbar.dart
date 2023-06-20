import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
            home: customappbar(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class customappbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(leading: Icon(Icons.home),
      title: Text("Custom App Bar",style: TextStyle(color: Colors.pink),),
      backgroundColor: Colors.pink.withOpacity(.3),
      elevation: 0,
      ),
      body: Image.network("https://images.pexels.com/photos/1865736/pexels-photo-1865736.jpeg?auto=compress&cs=tinysrgb&w=600",
      width: double.infinity,
      height: double.infinity,),
    );
  }

}
