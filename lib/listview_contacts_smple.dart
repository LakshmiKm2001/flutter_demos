import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: list(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACT LIST"),
      ),
      body: ListView(
        children: const [
          Center(
              child: Padding(
                padding: EdgeInsets.only(top:30),
                child: Text("MY CONTACTS",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
              )),
          Card(  
            color: Colors.white54,
            child: ListTile(
              //leading: Icon(Icons.person),
              leading: Image(image: AssetImage("assets/images/kindpng_7440257.png")),
              title: Text("Mr.Tom"),
              subtitle: Text("6757262637"),
              trailing: Icon(Icons.phone,),
              
            ),
          ),
          Card(
            color: Colors.white54,
            child: ListTile(
               leading: Image(image: NetworkImage("https://pbs.twimg.com/profile_images/1143734863687606272/XTrR2-pp_400x400.jpg")),
               title: Text("Anjal"),
               subtitle: Text("9847614304"),
               trailing: Icon(Icons.phone),
            ),

          ),
        ],
      ),
    );
  }
}
