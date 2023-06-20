import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Staggered_Grid(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class Staggered_Grid extends StatelessWidget {
  var images = [
    "https://images.pexels.com/photos/13233235/pexels-photo-13233235.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/9908010/pexels-photo-9908010.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/15534502/pexels-photo-15534502.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2974424/pexels-photo-2974424.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/14014940/pexels-photo-14014940.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/13261381/pexels-photo-13261381.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  var text = [
    "Nature",
    "Mysteries of Universe",
    "An Empire State",
    "Earth",
    "My Story",
    "Aesthetic"
  ];
  var date = [
    "20 june 2023",
    "10 may 2023",
    "19 june 2023",
    "9 april 2023",
    "12 july 2022",
    "5 june 2023"
  ];
  var name = [
    "Carl Sagan",
    "Earnest Hemingway",
    "Vincet van Novel",
    "Jaedan John G",
    "Harry Slopes Evan",
    "Tohan Jhon"
  ];

  var caxis = [2, 2, 2, 2, 2, 2];
  var maxis = [3, 4, 4, 4, 4, 3];

  var height = <double>[170, 260, 270, 270, 270, 170];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("STAGGERED GRID VIEW"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: List.generate(
                  6,
                  (index) => StaggeredGridTile.count(
                      crossAxisCellCount: caxis[index],
                      mainAxisCellCount: maxis[index],
                      child: Card(color: Colors.grey[400],
                          child: Column(children: [
                        Container(
                          height: height[index],
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                  image: NetworkImage(images[index]))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 15),
                          child: Text(
                            text[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(date[index]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(name[index]),
                        )
                      ]))))),
        ));
  }
}
