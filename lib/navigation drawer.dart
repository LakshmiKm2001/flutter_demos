import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Drawerrr(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
            }

class Drawerrr extends StatelessWidget {
  var items = [
    "Dashboard",
    "Leads",
    "Clients",
    "Projects",
    "Patients",
    "Subscription",
    "Payments",
    "Users",
    "Library"
  ];
  var icons = [
    Icons.dashboard,
    Icons.leak_add_sharp,
    Icons.people_outline_outlined,
    Icons.rocket_launch_outlined,
    Icons.sports_handball,
    Icons.menu_open_rounded,
    Icons.payments,
    Icons.account_circle_outlined,
    Icons.local_library_rounded
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Details"),
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue, Colors.blueGrey, Colors.white])),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:70),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://image.cnbcfm.com/api/v1/image/107059775-1652305858580-SundarPichai-051122-3.jpg?v=1652305889&w=1920&h=1080"),
                    ),
                    title: Text(
                      "Sundar Pichai",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    subtitle: Text("CEO of Alphabet Inc.",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                
                 
                 SizedBox(
                  height: 500,
                   child: ListView.builder(itemCount: 9,itemBuilder: (BuildContext, index) {
                        return ListTile(
                      leading: Icon(icons[index]),
                      title: Text(items[index]),
                    );
                   }),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(onPressed: () {}, child: Text("Logout")),
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              width:390,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "data:image/jpeg;base64,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",
                   fit: BoxFit.fill,
                   ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right:215,top: 20 ),
              child: Text("Sundar Pichai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Pichai Sundararajan (born June 10, 1972), better known as Sundar Pichai, is an Indian-American business executive. He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004, where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.",
              style: TextStyle(fontSize: 17)
              ),
            )
          ],
        ));
  }
}
