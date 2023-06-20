import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20btwn%20screens/second%20screen.dart';
import 'package:flutter_application_1/Storage/shared%20preferences/hi%20user.dart';
import 'package:flutter_application_1/Storage/shared%20preferences/registrationpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginPage(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<LoginPage> {
  final username_controller = TextEditingController(); //to fetch values from txt field =controller
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  //to fetch values stored in shared pref
  late String uname;
  late String name;
  late String pswd;


  void initState() {
    check_if_already_login();
    getvalue();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true);
    print(newuser);

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => secondpage()));
    }
  }

  //to clear the itms from textfield
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo="))),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: Icon(Icons.person),
                hintText: "User Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password_controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  String username = username_controller.text;
                  String password = password_controller.text;

                  if (username != '' &&
                      password != '' &&
                      username == uname &&
                      password == pswd) {
                    print('successfull');

                    logindata.setBool('newuser', false);
                    logindata.setString('username', username);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  }
                },
                child: Text("Login")),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationPage()));
              },
              child: Text("Dont You Have an account? Sign Up!"))
        ],
      ),
    );
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString("name")!;
      uname = logindata.getString("username")!;
      pswd = logindata.getString("password")!;
    });
  }
}
