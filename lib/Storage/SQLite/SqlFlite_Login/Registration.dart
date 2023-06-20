import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import '../../../SqlFlite_Storage/sqlOperation.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    theme: ThemeData(primarySwatch: Colors.orange),
    home: RegPage(),
    debugShowCheckedModeBanner: false,
  ));
}
class RegPage extends StatelessWidget {
  var  formkey1 = GlobalKey<FormState>();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {

    void Addnewuser(String name, String email, String pswd) async {

      var id = await SQLHelper.AddNewUser(name, email, pswd);

      if(id != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn02()));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegPage()));
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(style: TextStyle(color: Colors.white),"Registration Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                  height: 200,
                  width: 200,
                  child:  Image(image: AssetImage("assets/icons/meeting.png"))),
              const Text("Sign Up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const Padding(padding: EdgeInsets.all(7),
                  child: TextField(
                    //controller: names,
                    decoration:  InputDecoration(
                        suffixIcon: Icon(Icons.person_outline),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Name"
                    ),
                  )),
              const Padding(padding: EdgeInsets.all(7.0),
                  child: TextField(
                    //controller: username,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.account_circle_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "UserName"
                    ),
                  )),
              const Padding(padding: EdgeInsets.all(7),
                  child: TextField(
                    //controller: phone,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone_enabled_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Phone"
                    ),
                  )),
              const Padding(padding: EdgeInsets.all(7),
                  child: TextField(
                    //controller: email,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Email"
                    ),
                  )),
              const Padding(padding: EdgeInsets.all(7),
                  child: TextField(
                    //controller: password,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                        labelText: "Password"
                    ),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () async {

                    String uname = conemail.text; // Its created inorder to test wheather the email is already exist.
                    String name = conname.text;

                    var data = await SQLHelper.userFound(name, uname);

                    if(data.isNotEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('User already Exist')));
                    } else {
                      Addnewuser(conname.text, conemail.text, pass.text);
                    }
                  }, child: const Text(style: TextStyle(color: Colors.white),"Sign Up")),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn02()));
              }, child: const Text(style: TextStyle(color: Colors.blue),"Already have an Account,LogIn" ))
            ],
          ),
        ),
      ),
    );
  }
}