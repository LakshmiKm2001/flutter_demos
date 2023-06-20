import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Storage/shared%20preferences/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: RegistrationPage(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
                  Container(
                height: 280,
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1430650391/vector/mobile-banking-app-and-payment-by-credit-card-online-pay-and-electronic-bill-payment.jpg?s=612x612&w=0&k=20&c=kmMoLNouHdwALJ7t6X-jwMQnRULXhF08csdb0m42XhQ="))),
              ),
               Padding(
                 padding: const EdgeInsets.all(20),
                 child: Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                             ),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    labelText: "Email",
                    suffixIcon: Icon(Icons.mail_outlined)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: username_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    labelText: "User Name",
                    suffixIcon: Icon(Icons.person)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: password_controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye)
                  ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    labelText: "Phone Number",
                    suffixIcon: Icon(Icons.call)
                  ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    labelText: "Gender",
                    suffixIcon: Icon(Icons.people_outline_rounded)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      register();
                    },
                    child: Text("Register")),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text("Already Have an account? Login!"))
            ],
          ),
        ),
      ),
    );
  }

  void register() async {
    logindata = await SharedPreferences.getInstance();
    String name = name_controller.text;
    String username = username_controller.text;
    String password = password_controller.text;

    if (username != '' && password != '') {
      logindata.setString('name', name); //key value pairs
      logindata.setString('username', username);
      logindata.setString('password', password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
