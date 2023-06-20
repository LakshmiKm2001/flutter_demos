import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp( MaterialApp(
    home: Login_Api(),
  ));
}

class Login_Api extends StatefulWidget {
  @override
  State<Login_Api> createState() => _Login_ApiState();
}

class _Login_ApiState extends State<Login_Api> {
  Future<Response?> signIn() async {
    var dio = Dio();
    try {
      var response = await dio.post(
          'http://101.53.135.201:8006/api/method/kvn_farmrich.api.v1.auth.authenticate',
          data: {"email": "kvntest@gmail.com", "password": "kvn@123"},
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ));
      print(response.data);
      return response;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
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
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: Icon(Icons.person),
                hintText: "User Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  signIn();
                },
                child: Text("Login")),
          ),
        ],
      ),
    );
  }
}
