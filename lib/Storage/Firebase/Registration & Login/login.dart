import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/fire%20aunthentication.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/home.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/registration.dart';
import 'package:get/get.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //firebase intialising
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {

  var formkey = GlobalKey<FormState>();
  String? email; // to save values in txtfield
  String? pwd;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LOGIN PAGE"),),
      body: Form(
        key: formkey,
        child: ListView(children: [
          Image.network(
            "https://media.istockphoto.com/id/638149354/photo/modern-keyboard-wih-blue-log-in-button.jpg?b=1&s=612x612&w=0&k=20&c=QBGZ3KvygcqOlC3hzJqmJcPAYj1Ft6vlttW2I0G_7Yk=",
            height: 100,
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username"),
                  validator: (uname){
                    if(uname!.isEmpty){
                      return "Enter Your Name" ;
                    }else{
                       return null;
                    }
                  },
                  onSaved: (name){
                    email=name;
                  },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password"),
               validator: (password){
                    if(password!.isEmpty){
                      return "Password cannot be empty" ;
                    }else{
                       return null;
                    }
                  },
                  onSaved: (pass){
                    pwd=pass;
                  },
              ),
          ),
          SizedBox(
            height: 200,
          ),
          ElevatedButton(onPressed: () {
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
              FireHelper().signIn(mail:email!,pass:pwd!).then((value) {
                if(value==null){
                  Get.to(Home());
                }else{
                  Get.snackbar("Error", "User not found $value");
                }
              });
            }
          }, child: Text("Login")),

          TextButton(onPressed: () {
              Get.to(Registration());
          }, child: Text("Signup Here"))
        ]),
      ),
    );
  }
}
