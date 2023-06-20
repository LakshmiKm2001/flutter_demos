import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatefulWidget{
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
     final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
   return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex=value;
          });
        },
        selectedLabelStyle: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
        unselectedFontSize: 0,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "."),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/3408353/pexels-photo-3408353.jpeg?auto=compress&cs=tinysrgb&w=600",
                ),
                fit:BoxFit.cover
              )
            ),
          ),

          BackdropFilter(filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
          child: Container(
            color: Colors.black.withOpacity(.4),
          ),),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back,size: 25,color: Colors.white,),
                      ),
                    ),
                    Text("JAPAN",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5
                      ),),
                    Icon(Icons.bookmark_border,
                          size: 25,color: Colors.white,),
                     ],
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending Attractions",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    Text(":",
                      style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                  ],
                ),),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: height/ 2 - 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://images.pexels.com/photos/2091034/pexels-photo-2091034.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(.7), BlendMode.darken)
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kyoto Tour",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            SizedBox(height: 10,),
                            Text("Three day tour around kyoto",
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400
                              ),),]

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(">",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 30,bottom: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Weekly Highlights",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),),
              Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Container(
                height: height/4,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,right:5),
                      child: Container(
                        height: height/ 2 - 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://images.pexels.com/photos/7526805/pexels-photo-7526805.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(.7), BlendMode.darken)
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(">",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Takashi Castle",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),),
                                        SizedBox(height: 10,),
                                        Text("\$200-400 ",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400
                                          ),),]

                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:5),
                      child: Container(
                        height: height/ 2 - 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://images.pexels.com/photos/6047715/pexels-photo-6047715.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(.7), BlendMode.darken)
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(">",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Heaven's Gate",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),),
                                        SizedBox(height: 10,),
                                        Text("\$50-150 ",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400
                                          ),),]

                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:5),
                      child: Container(
                        height: height/ 2 - 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage("https://images.pexels.com/photos/1654748/pexels-photo-1654748.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(.7), BlendMode.darken)
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(">",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Hemiji Castle",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),),
                                        SizedBox(height: 10,),
                                        Text("\$200-300",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400
                                          ),),]

                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),)

            ],
          )

        ],
      ),
    );
  }
}