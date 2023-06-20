import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: clippers(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class clippers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ClipRect(
                child: Align(
                    widthFactor: .6,
                    heightFactor: .3,
                    alignment: Alignment.center,
                    child: Image.network(  //image wrped with align and cliprect
                               "https://images.pexels.com/photos/196655/pexels-photo-196655.jpeg?auto=compress&cs=tinysrgb&w=400"
                        ))
                        ),

               ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://images.pexels.com/photos/1542252/pexels-photo-1542252.jpeg?auto=compress&cs=tinysrgb&w=400")),    

                ClipPath( //dependencies
                   clipper: WaveClipperTwo(reverse: true,flip:true),
                  child: Image.network("https://images.pexels.com/photos/2508735/pexels-photo-2508735.jpeg?auto=compress&cs=tinysrgb&w=600"))    
          ],
        ),
      ),
    ));
  }
}
