import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
            home: BottomsheetMain(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class BottomsheetMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:Stack(children:[RiveAnimation.asset("assets/Animations/4227-8763-dock-icon.riv",
        fit:BoxFit.cover),
          Center(
          child: GestureDetector(
            onDoubleTap: (){
              showSheet(context); 
            },
            child: Text("Click me to show bottom sheet")),
            ),
        ]),
     );
  }
  
  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(children: [
        Text("SHARE BY"),
         ListTile(
          leading:  Logo(Logos.whatsapp),title: Text("WHATSAPP"),),
            ListTile(
          leading:  Logo(Logos.facebook_logo),title: Text("FACEBOOK"),),
            ListTile(
          leading:  Logo(Logos.instagram),title: Text("INSTAGRAM"),),

        ],),
      );
    });
  }
    }

