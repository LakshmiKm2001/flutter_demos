import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: profileStack(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class profileStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PROFILE'),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.more_vert_rounded)],
        ),
        body: Stack(children: [
          Column(
            children: [
              Container(
                  height: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "data:image/png;base64,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")))),
              Container(
                height: 491,
                color: Colors.white,
              )
            ],
          ),
          const Positioned(
            top: 188,
            left: 138,
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: 190,
            left: 140,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "data:image/jpeg;base64,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"),
              radius: 60,
            ),
          ),
          const Positioned(
            top: 230,
            left: 37,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 25,
              child: Icon(Icons.message),
            ),
          ),
          const Positioned(
            top: 230,
            right: 35,
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(Icons.add),
            ),
          ),
          const Positioned(
              top: 320,
              left: 125,
              child: Text(
                "David Stephen",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          const Positioned(
            top: 355,
            left: 150,
            child: Text(
              "Flutter Developer",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 380,
            left: 25,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        "1755",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Appreciations")
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("800", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Followers")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text("231",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Following")
                    ],
                  ),
                )
              ],
            ),
          )
       ]));
  }
}
