import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact%20copy.dart';
import 'package:flutter_application_1/watsapp_UI/chat%20screen.dart';
import 'package:flutter_application_1/watsapp_UI/community%20screen.dart';
import 'package:flutter_application_1/watsapp_UI/status%20screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSwatch()
                    .copyWith(primary: Color.fromARGB(255, 18, 125, 122))),
            home: WhatsApp_home(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class WhatsApp_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //tab view one by one
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 5,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked Devices")),
                PopupMenuItem(child: Text("Stared Messages")),
                PopupMenuItem(child: Text("Payment")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })
          ],
          bottom: TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: Tab(icon: Icon(Icons.group))),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Chats")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Status")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Tab(text: "Call")),
              ]),
        ),
    
        body: TabBarView(children: [
          community(),
          Chat_Screen(),
          Status_Screen(),
          Call_Screen()
        ]),
      ),
    );
  }
}
