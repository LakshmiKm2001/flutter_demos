import 'package:flutter/material.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/fire%20aunthentication.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/login.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME"),
            ElevatedButton(onPressed: () {
              FireHelper().signOut().then((value) {
                Get.to(LoginPage());
              });
            }, child: Text("SignOut"))
          ],
        ),
      ),
    );
  }
}
