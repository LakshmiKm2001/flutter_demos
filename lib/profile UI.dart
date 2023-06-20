import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: profile(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class profile extends StatelessWidget {
  var faicon = [
    FaIcon(FontAwesomeIcons.facebook,size: 35,color: Colors.blue,),
    FaIcon(FontAwesomeIcons.twitter, size: 35, color: Colors.blue),
    FaIcon(FontAwesomeIcons.linkedin, size: 35, color: Colors.blue),
    FaIcon(FontAwesomeIcons.github, size: 35, color: Colors.blue)
  ];

  var lead = [
    Icons.remove_red_eye,
    Icons.settings,
    Icons.history,
    Icons.support_agent,
    Icons.person_add_alt_1_outlined,
    Icons.logout
  ];
  var title = [
    "Privacy",
    "Settings",
    "History",
    "Support",
    "Invite Friend",
    "Logout"
  ];
  var trail = [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PROFILE", style: TextStyle(color: Colors.black)),
        leading: Icon(
          Icons.arrow_back_outlined,
          color: Colors.black,
        ),
        actions: [
          Icon(Icons.menu, color: Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          child: Column(children: [
            CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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")),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) => faicon[index]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text(
                "Sundar Pichai",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Text(
              "@CEO of Google",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Indian-American Business Executive",
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 390,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      lead.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              height: 55,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: ListTile(
                                leading: Icon(lead[index]),
                                title: Text(title[index]),
                                trailing: Icon(trail[index]),
                              ),
                            ),
                          )),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
