
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: list_view(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class list_view extends StatelessWidget {

  var image=[ "https://c1.wallpaperflare.com/preview/265/838/542/apple-red-fruit-crop.jpg",
    "https://previews.123rf.com/images/kun4kun4/kun4kun41808/kun4kun4180800016/112824640-mango-isolated-on-white-background.jpg",
    "https://media.istockphoto.com/id/1400057530/photo/bananas-isolated.jpg?b=1&s=170667a&w=0&k=20&c=uiSdjIQkTr7S4gEdW_oB_5zfFYhpfe0LP-CryQl49w4=",
    "https://media.istockphoto.com/id/150533660/photo/bunch-of-white-grapes-on-white-background.jpg?s=612x612&w=0&k=20&c=MYyjMtlpEptO9kJ0NsHzvDXyvhUP8rPjKwky2iw1Tz8=",
    "https://thumbs.dreamstime.com/b/sliced-ripe-watermelon-white-background-closeup-watermelo-sliced-ripe-watermelon-white-background-cutout-closeup-101863818.jpg",
    "https://images.unsplash.com/photo-1585059895524-72359e06133a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8a2l3aXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=2000&q=60",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4hyLHSb_R5h0qHNwGToPlL9ywyfm4UhBt5g&usqp=CAU",
    "https://images.pexels.com/photos/4038803/pexels-photo-4038803.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    ];

    var fruits = [
    "APPLE",
    "MANGO",
    "BANANA",
    "GRAPES",
    "MELON",
    "KIWI",
    "ORANGE",
    "STRWBERY"
  ];

   var price = ["120", "70", "30", "25", "50", "150", "50", "120"];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PRODUCT LIST"), 
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.shopping_cart)]),
         body: ListView.custom( childrenDelegate: SliverChildBuilderDelegate(childCount: 8,(context, index) {
            return Card(
              color:
               Colors.grey[400],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                mainAxisSize: MainAxisSize.max,
                children: [
                    Image(
                    image: NetworkImage(image[index]),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(   
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                        RichText(   
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,  
                            text: TextSpan(
                                text: "Name: ",
                                style: TextStyle(color: Colors.black),
                                children: [
                              TextSpan(
                                  text: fruits[index],
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                        RichText(
                            text: TextSpan(
                                text: "Unit    : ",
                                style: TextStyle(color: Colors.black),
                                children: [
                              TextSpan(
                                  text: "1 kg",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                        RichText(
                            text: TextSpan(
                                text: "Price  : ",
                               style: TextStyle(color: Colors.black),
                                children: [
                              TextSpan(
                                  text: price[index],
                                  style: TextStyle(fontWeight: FontWeight.bold)
                                  )
                            ])),
                      ],
                    ),
                  ),
                 ElevatedButton(onPressed: (){}, child: Text("Add to cart"),
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54,
                 ),
                 )
                ],
              ),
            );
          }),
        ));
  }
}
