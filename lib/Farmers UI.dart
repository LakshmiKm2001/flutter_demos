import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
            home: farmersUI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class farmersUI extends StatelessWidget {

var items=["VEGETABLES","FRUITS","EXOTIC","FRESH CUTS"];
var images=["https://images.pexels.com/photos/1391504/pexels-photo-1391504.jpeg?auto=compress&cs=tinysrgb&w=600", 
            "https://images.pexels.com/photos/142520/pexels-photo-142520.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/952480/pexels-photo-952480.jpeg?auto=compress&cs=tinysrgb&w=600",
            "https://images.pexels.com/photos/5965653/pexels-photo-5965653.jpeg?auto=compress&cs=tinysrgb&w=600",
           ];
var gridimages=["https://images.pexels.com/photos/1367242/pexels-photo-1367242.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/235294/pexels-photo-235294.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/5645122/pexels-photo-5645122.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/2749165/pexels-photo-2749165.jpeg?auto=compress&cs=tinysrgb&w=600",
                "https://images.pexels.com/photos/1008747/pexels-photo-1008747.jpeg?auto=compress&cs=tinysrgb&w=600"
               ];
var griditems=["Vegetables","Fruits","Exotic","Fresh Cuts","Nutrition Charges","Packed Flavors"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            floating: true,
            pinned:true,
            centerTitle: false,
            backgroundColor: Colors.green,
             title:  Text("FARMERS FRESH ZONE",
               style: TextStyle(fontWeight: FontWeight.bold),
              ),
            bottom: AppBar(
               backgroundColor:Colors.green, //Colors.green,
              title: Container(
                height: 38,
                color: Colors.white,
                child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),hintText: "Search for vegetables,fruits..."),),
              ),
            ),
         
            actions: [
              Icon(Icons.location_on_outlined,size: 20,),
               Padding(
                 padding: const EdgeInsets.only(top: 16),
                 child: Text("Kochi",style: TextStyle(fontSize: 20),),
               ),
               Padding(
                 padding: const EdgeInsets.only(top: 3),
                 child: Icon(Icons.arrow_drop_down),
               )],
                ),
          SliverList(delegate: SliverChildListDelegate([SizedBox(
            height: 60,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) => Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                height: 35,
                width: 90,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(items[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.green),),
                ),
                decoration: BoxDecoration(border: Border.all(color: Colors.green),color: Colors.green[100],borderRadius: BorderRadius.circular(25)),
                        ),
              )
          ),
          ),
          ),
            CarouselSlider(items: List.generate(4, (index) => Container(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(images[index]))),
              
            )),
             options:  CarouselOptions(
      height: 250,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(milliseconds: 1500),
      autoPlayAnimationDuration: Duration(milliseconds: 1000),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   )),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:65,
        decoration: BoxDecoration(border:Border.all(color: Colors.black26) ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Icon(Icons.timer,color: (Colors.green),),
            Padding(
              padding: const EdgeInsets.only(top:5),
              child: Text("30 MIN POLICY"),
            )]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Icon(Icons.mobile_screen_share,color: (Colors.green)),
            Padding(
              padding: const EdgeInsets.only(top:5),
              child: Text("TRACEABILITY"),
            )]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [Icon(Icons.waving_hand,color: (Colors.blue)),
            Padding(
              padding: const EdgeInsets.only(top:5),
              child: Text("LOCAL SOURCING"),
            )]),
          ),
         ],
         ),),
    ),
    Padding(
      padding: const EdgeInsets.only(top:15,left:5),
      child: Text("Shop By Category",style:TextStyle(fontSize: 22)),
    ),

    GridView.builder(
      shrinkWrap: true, //to fit into screen
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
        ),
        itemCount: 6,
       itemBuilder: (context,index){
        return ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            child: Column(children:[Image(image: NetworkImage(gridimages[index])),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: Text(griditems[index],),
            )]),
        ),
        );
       }),
       Container()
       ]),
        )
        ],
        ),
       
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.green,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.white,),label:"Home",),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart,color: Colors.white),label: "Cart"),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined,color: Colors.white),label: "Account"),

      ],)
        );
  }
}