import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'details.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var seletedIndex=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      child: Icon(Icons.filter_list,size: 25,color: Colors.white,),
                    ),
                  ),
                  Text("HOME",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child:Container(
                height: size.height-200,
                child: ListView(
                  children: [
                    itemCard(size,"Japan","Explore the land of rising sun","https://images.pexels.com/photos/15830265/pexels-photo-15830265.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    itemCard(size,"Canada","Explore the vast forest of Canada","https://images.pexels.com/photos/2792670/pexels-photo-2792670.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
                  ],
                ),
              )
            )
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.pink,
          currentIndex: seletedIndex,
          onTap: (value){
            setState(() {
              seletedIndex=value;
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
          items: const [
             BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: "."),
             BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "."),
          ],
        ),
    );
  }
}

class itemCard extends StatelessWidget {
  final Size size;
  final String title;
  final String subTitle;
  final String imgAdd;
  

  itemCard(this.size, this.title, this.subTitle, this.imgAdd);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 30),
      child: Stack(
          children: [
            Container(
              height: size.height / 2 - 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgAdd),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.7), BlendMode.darken)
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              height: size.height / 2 - 100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    SizedBox(height: 10,),
                    Text(subTitle,
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),),
                    SizedBox(height: 20,),
                    
                    GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>details())),
                      child: Container(
                        height: 50,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Explore Now",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold
                            ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
      ),
    );
  }
}
