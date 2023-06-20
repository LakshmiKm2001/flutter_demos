import 'package:flutter/material.dart';
import 'package:flutter_application_1/Storage/Firebase/Registration%20&%20Login/login.dart';
import 'package:get/get.dart';


import 'fire aunthentication.dart';

class Registration extends StatelessWidget{

  var formkey=GlobalKey<FormState>();
  String? email;
  String? pass;
  String? name;
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("REGISTRATION PAGE"),),
    body: Form(
      key: formkey,
      child: ListView(
        children: [
          Image.network("https://media.istockphoto.com/id/638149354/photo/modern-keyboard-wih-blue-log-in-button.jpg?b=1&s=612x612&w=0&k=20&c=QBGZ3KvygcqOlC3hzJqmJcPAYj1Ft6vlttW2I0G_7Yk=",
          height: 100,
          width: 100,
          ),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Name"),
                    validator: (name){
                    if(name!.isEmpty){
                      return "Enter Your Name" ;
                    }else{
                       return null;
                    }
                  },
                  onSaved: (ename){ //to save the value of current state
                    name=ename;
                  },
                  )),

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
                  onSaved: (pwd){
                    pass=pwd;
                  },
              ),
          ),
            SizedBox(
            height: 200,
          ),
          ElevatedButton(onPressed: () {
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();

              FireHelper().signUp(mail:email!,password:pass!).then((value){
                if(value==null){
                  Get.to(LoginPage());
                }else{
                  Get.snackbar("error",value);
                }
              });
            }
          }, child: Text("Register")),
        ],
      ),
    ),
   );
  }

}