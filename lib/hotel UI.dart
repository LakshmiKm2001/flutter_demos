import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: hotelUI(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class hotelUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container( 
                width:500,
                height: 330,
               decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg?auto=compress&cs=tinysrgb&w=600"))),
                   child: Stack(children: [
                    Positioned(
                      left: 20,
                      top: 220,
                      child: Text("Crown Plaza",style: TextStyle(fontSize: 25,color: Colors.white),)),
                    Positioned(
                      left:20,
                      top:250,
                      child: Text("Kochi,Kerala",style: TextStyle(fontSize: 25,color: Colors.white))),
                      
                    Positioned(
                      top:280,
                      left:15,
                      child: Container(
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                        child:Center(child: Text("8.5/10 reviews",style: TextStyle(color: Colors.white))) ,
                        ),
                    ),
                      Positioned(
                        top:290,
                        right:20,
                        child: Icon(Icons.favorite_border_sharp,color: Colors.white,size: 25,))
                    ],),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      children: [
                                    RatingBar.readOnly(
                                      filledIcon: Icons.star, 
                                      emptyIcon: Icons.star_border,
                                      halfFilledIcon: Icons.star_half,
                                      initialRating: 4,
                                      maxRating: 5,
                                      filledColor: Colors.blue.shade400,
                                      halfFilledColor: Colors.blue.shade400, 
                                      emptyColor: Colors.blue.shade400,
                                      size: 25,
                                      isHalfAllowed: true,
                                  ),
                                  Row(children: [Icon(Icons.location_on,color: Colors.grey,),
                                   Text("8 km to LuluMall",style: TextStyle(color: Colors.grey)),
                                  ],),]),
                    ),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("\$ 200",style: TextStyle(color: Colors.blue),),
                Text("/per night",style: TextStyle(color: Colors.grey))
                ],),
              )
              ],),),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 300,
                    child: ElevatedButton(onPressed:(){} , child: Text("Book Now")),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140,top: 20),
                  child: Text("Ramada Plaza Palm Grove",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("The luxurious Crowne Plaza Kochi offers elegant and modern rooms with views of the backwaters and city. Located on the NH 47 Bypass, it features 4 food and beverage options.\nCrowne Plaza Kochi is 2.5 km from Marine Drive and 7 km from Ernakulam Railway Junction. Fort Kochin is 12 km and Bolghatty Island is 15 km from the hotel. Cochin International Airport is 23 km away. The property is 7 km from Kakkanad Info Park and 1.5 km from Lake Shore Hospital. The Vyttila Mobility Hub Bus Station is 5 km.\nAll rooms are equipped with an ergonomic work area, flat-screen satellite TV, iPod dock and minibar. They also include tea/coffee making facilities and a safe. Private bathroom comes with a bathtub, shower and bathrobes.Recreation facilities at the hotel include an outdoor pool and extensive spa treatments. Guests can enjoy a work-out at the 24-hour fitness centre or approach the 24-hour reception for assistance.",
                  style: TextStyle(fontSize: 16),),
                )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items:[ 
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          ]),
      ),
    );
  }
}
