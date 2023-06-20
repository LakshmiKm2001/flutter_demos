
  import 'package:flutter/material.dart';
import 'package:flutter_application_1/SqlFlite_Login/registration.dart';
import 'package:sample_flutter/Storage/LoginDatabase/LROperations.dart';
import 'package:sample_flutter/Storage/LoginDatabase/RegPage.dart';
import 'package:sample_flutter/Storage/LoginDatabase/homepage2.dart';

import '../../../SqlFlite_Storage/sqlOperation.dart';

class LogIn02 extends StatefulWidget {
  const LogIn02({Key? key}) : super(key: key);

  @override
  State<LogIn02> createState() => _LogIn02State();
}

class _LogIn02State extends State<LogIn02> {
  bool showpsw = true;

  final username = TextEditingController();
  final password = TextEditingController();

  void loginCheck(String usrname, String psword) async {

    var data = await SQLHelper.CheckLogin(usrname, psword );

    // if(data.isNotEmpty) {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home2()));
    //   print('Login Success');
    // } else if(data.isEmpty) {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn02()));
    //   print('Login Failed');
    // }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(style: TextStyle(color: Colors.white), "Login Page"),
      ),
      body: Center(
        child: Column(
          children: [
            const Image(
                image: AssetImage("assets/images/women_using_phone.jpg")),
            const Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  //controller: username,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: "UserName"),
                )),
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: showpsw,
                  obscuringCharacter: '*',
                  // controller: password,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (showpsw) {
                              showpsw = false;
                            } else {
                              showpsw = true;
                            }
                          });
                        },
                        icon: Icon(showpsw == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility),
                      ),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      labelText: "Password"),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: TextButton(
                          onPressed: () {}, child: const Text("Forget Password"))),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () async {
                      loginCheck(username.text, password.text);
                    },
                    child: const Padding(
                      padding:  EdgeInsets.only(left: 20, right: 20),
                      child:  Text(
                          style: TextStyle(color: Colors.white), "Log In"),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegPage()));
                },
                child: const Text("Not a user, Login Here"))
          ],
        ),
      ),
    );
  }
}

class CheckLogin {
}