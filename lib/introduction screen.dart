import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'farmers UI.dart';
import 'hotel UI.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: introScreen(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class introScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    PageDecoration pageDecoration = PageDecoration( //calling the custm widget(page dec) and setting it into a variable
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [.1, .5, .7, .9],
                colors: [Colors.purple, Colors.red, Colors.pink, Colors.red])));

    return IntroductionScreen(
      globalBackgroundColor: Colors.purple,
      pages: [
        PageViewModel(
            decoration: pageDecoration, //page dec is a custom widget
            title: "First Page",
            body:
                "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
            image: IntroImage(
                "https://images.pexels.com/photos/5913380/pexels-photo-5913380.jpeg?auto=compress&cs=tinysrgb&w=600")),
        PageViewModel(
            decoration: pageDecoration,
            title: "Second Page",
            body:
                "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
            image: IntroImage( //introImg is custom method creatd by ourself
                "https://images.pexels.com/photos/7235328/pexels-photo-7235328.jpeg?auto=compress&cs=tinysrgb&w=600")),
        PageViewModel(
            decoration: pageDecoration,
            title: "Third Page",
            body:
                "Introduction Screen allows you to have a screen on an app's first launch to, for example, explain your app. This widget is very customizable with a great design.",
            image: IntroImage(
                "https://images.pexels.com/photos/3392937/pexels-photo-3392937.jpeg?auto=compress&cs=tinysrgb&w=600")),
      ],

      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => farmersUI())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => hotelUI())),
      showSkipButton: true,
      //showBackButton: true,
      skip: Text("Skip",),
      next: Icon(Icons.arrow_forward),
      done: Text("Continue to Home"),
      dotsDecorator: const DotsDecorator(//scrollabe dots
          size: Size(10, 10),
          color: Colors.white,
          activeColor: Colors.pink,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)))),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(
        image,
        height: 350,
        width: 350,
      ),
    );
  }
}
