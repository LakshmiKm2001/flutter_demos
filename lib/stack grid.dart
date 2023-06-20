
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
            home: StackGrid(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class StackGrid extends StatelessWidget{
  @override

 var img = [
    "https://images.unsplash.com/photo-1566153580922-16a9709fff30?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8NDk5Mzk0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=420&q=60",
    "https://images.unsplash.com/photo-1543832923-44667a44c804?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZW5nbGFuZHxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://media.istockphoto.com/id/1318298968/photo/alexandre-iii-bridge-in-paris-at-sunset.jpg?b=1&s=170667a&w=0&k=20&c=MoKxLOS65fcaoms24LFceNY_tCgj82tAKNRCPcTI1AM=",
    "https://images.unsplash.com/photo-1520106212299-d99c443e4568?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    "https://images.unsplash.com/photo-1517935706615-2717063c2225?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
    "https://images.unsplash.com/photo-1548013146-72479768bada?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80",
    "https://images.unsplash.com/photo-1517309230475-6736d926b979?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
  ];
  var txt = ["USA", "ENGLAND", "FRANCE", "RUSSIA", "CANADA","INDIA","CHINA","SPAIN"];

  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title:Text("STACK GRID VIEW")),
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        ), itemBuilder: (context,index){
          return Stack(
            children: [Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 310,
                width: 310,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(img[index]),
                  fit: BoxFit.fill
                  ))),
            ),
            Positioned(
              top: 20,
              left: 19,
              child: Text(txt[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))
         ],
                
            );
        }),
     );
  }

}