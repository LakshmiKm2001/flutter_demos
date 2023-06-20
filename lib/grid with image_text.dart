import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
            home: gridimg(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class gridimg extends StatelessWidget{
  @override

var images=["assets/images/handbag.jpg","assets/images/sunglass.png","assets/images/belt.jpg","assets/images/chain.jpg","assets/images/earing.jpg","assets/images/socks.jpg"];
var names=["Hand Bag","Sun Glass","Whitney Belt","Neck Chain","Earings","Socks"];
var price=[1500,300,700,500,300,670];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("SHRINE"),
        leading: Icon(Icons.menu,size: 30,),
        actions: [
          Icon(Icons.search,size: 30),
          Icon(Icons.menu_open_sharp,size: 30)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children:List.generate(6, (index) => Container(
              decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 5,
                offset:Offset (5,5))
                ],
                borderRadius: BorderRadius.circular(10)
                ),
               
            child:Column(children: [Container( height: 100,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                image:DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(images[index])))
              
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Text(
                names[index],
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),

            Text(
              "\$${price[index]}",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            ]
            )
            )
            ),
          ),
      )
    );
  }

}