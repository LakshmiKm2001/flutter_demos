import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ExpansionTileUI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class ExpansionTileUI extends StatelessWidget {
  var title = [
    "Flutter Internship",
    "Python Training",
    "React Native",
    "Data Science"
  ];
  var subtitle = ["6 months+", "4 months", "5 months", "6 months"];
  var animation = [
    "https://public.rive.app/community/runtime-files/3466-7249-3d-cube-demo.riv",
    "https://public.rive.app/community/runtime-files/4123-8520-pomodoro-app.riv"
        "https://public.rive.app/community/runtime-files/3703-7734-fire-button.riv",
    "https://public.rive.app/community/runtime-files/4347-8939-double-helix-loader.riv"
  ];
  var description = [
    "Flutter is a mobile app development platform created by Google. ",
    "Python is an interpreted, interactive, object-oriented programming language. ",
    "React Native is an open-source UI software framework created by Meta Platforms. ",
    "Data science is the study of data to extract meaningful insights for business. "
  ];
  var fees = ["Fee:35,000", "Fee:30,000", "Fee:28,000", "Fee:45,000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Courses Offered"),
        ),
        body: Column(
          children: [
            Text(
              "OUR PROGRAMS",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              children: List.generate(
                  4,
                  (index) => Container(
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60))),
                        width: 400,
                        height: 150,
                        child: Stack(
                          children: [
                            RiveAnimation.network(
                              animation[index],
                              fit: BoxFit.fill,
                            ),
                            ExpansionTile(
                              title: Text(title[index]),
                              subtitle: Text(subtitle[index]),
                              children: List.generate(
                                  fees.length,
                                  (index) => ListTile(
                                        title: Text(description[index]),
                                        subtitle: Text(fees[index]),
                                      )),
                            )
                          ],
                        ),
                      )),
            )
          ],
        ));
  }
}
