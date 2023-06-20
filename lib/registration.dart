//text form field* can only validated
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Registrationpage extends StatefulWidget{

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {

  var formkey=GlobalKey<FormState>();
  var showpass=true; //initially we can see the passwrd
  var confirmpass; //it will store the passwrd we typd frst and compare it with second

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text("Registration With Validation")),

    body: Form(
      key: formkey,
      child: Column(
        children: [
      Padding(
        padding: const EdgeInsets.only(top:40),
        child: Text("Registration Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      Padding(
        padding: const EdgeInsets.only(left:20,right: 20,top: 30),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon:Icon(Icons.account_box_sharp),),
            validator: (username){
              if(username!.isEmpty || !username.contains('@')){
                return 'Enter a Valid Email';
              }
              else{
             return null;
              }
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: TextFormField(

          obscureText: showpass,  //pass hidden accrding to shwpass/obsecr txt is by default false
          obscuringCharacter: "*",

          decoration: InputDecoration(
            hintText: "password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(onPressed: (){    //iconbutton=actions for icon
               setState(() {
                 if(showpass){
                  showpass=false;
                 }
                 else{
                  showpass=true;
                 }
               });
            }, icon:Icon(showpass==true?Icons.visibility_off:Icons.visibility)),
            ),
            validator: (password){
              confirmpass=password;
              if(password!.isEmpty || password.length<6){
                return 'Not a Valid Password';
              }
              else{
                return null;
              }
            },
         ),
      ),

        Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: TextFormField(

          obscureText: showpass,  //pass hidden accrding to shwpass/obsecr txt is by default false
          obscuringCharacter: "*",

          decoration: InputDecoration(
            hintText: 'confirm password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(onPressed: (){    //iconbutton=actions for icon
               setState(() {
                 if(showpass){
                  showpass=false;
                 }
                 else{
                  showpass=true;
                 }
               });
            }, icon:Icon(showpass==true?Icons.visibility_off:Icons.visibility)),
            ),
            validator: (password){
            if(password!.isEmpty || password.length<6 || confirmpass != password){
                return 'Not a Valid Password';
              }
              else{
                return null;
              }
            },
         ),
      ),
      Padding(
        padding: const EdgeInsets.only(top:30),
        child: ElevatedButton(onPressed: (){
          final valid=formkey.currentState!.validate(); 
          if(valid){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>homepage()));
          }
          else{
               Fluttertoast.showToast(
        msg: "Try Again Later",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        //timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
          }
        }, child: Text("LOGIN")),
      )
   ],)),
   );
   
  }
} 
