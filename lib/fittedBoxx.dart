import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: fittedBoxx(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class fittedBoxx extends StatefulWidget {
  @override
  State<fittedBoxx> createState() => _fittedBoxxState();
}

class _fittedBoxxState extends State<fittedBoxx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Card(
              color: Colors.pink[200],
              child: Row(
                children: [
                  Container(
                    child: Text("Calvin Clien~"),
                  ),
                   Container(
                    height: 200,
                    child: Image.network("https://images.pexels.com/photos/3910071/pexels-photo-3910071.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
