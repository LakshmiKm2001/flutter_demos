import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Gridcard(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Gridcard extends StatelessWidget {
  var color = [
    Colors.purple,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.red,
    Colors.deepPurple,
    Colors.teal,
    Colors.indigo,
    Colors.lime,
    Colors.deepPurpleAccent
  ];
  var icon = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.ticket,
    FontAwesomeIcons.signal,
    FontAwesomeIcons.bookBookmark,
    FontAwesomeIcons.phone,
    FontAwesomeIcons.solidEnvelope,
    FontAwesomeIcons.map,
    FontAwesomeIcons.microchip,
    FontAwesomeIcons.microphoneSlash,
    FontAwesomeIcons.fileCirclePlus,
  ];
  var name = [
    "HOME",
    "ALERT",
    "CAMERA",
    "TICKET",
    "SIGNAL\nSTREAM",
    "BOOKMARK",
    "PHONE",
    "MAIL",
    "MAP",
    "PROCESOR",
    "MUTE",
    "ADD FILE"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GRID VIEW")),
      body: GridView.builder(
        itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 90,
              childAspectRatio: 2,
              mainAxisSpacing: 20
              ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: color[index],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: Offset(1, 4))
                    ],
                    ),
                 
                child: Center(
                  child: ListTile(
                    leading: FaIcon(icon[index]),
                    title: Text(name[index]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
