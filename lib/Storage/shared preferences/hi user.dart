import 'package:flutter/material.dart';
import 'package:flutter_application_1/Storage/shared%20preferences/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preference Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDashboard(),
    );
  }
}
class MyDashboard extends StatefulWidget {
  @override
  _MyDashboardState createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {

  late SharedPreferences logindata;
  late String username; 


  @override
  void initState() {
    initial(); //function
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hai $username, Welcome To Your Workspace ',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          
            Image.network("https://media.istockphoto.com/id/1409149401/vector/man-buying-medicine-at-a-pharmacy-shop.jpg?s=612x612&w=0&k=20&c=V3CjEEBx1EPU1YaqTEGtZx35RqSP0fiW8L93YTGZH_Y="),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                onPressed: () {
                  logindata.setBool('newuser', true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('LogOut'),
                          ),
              ),
          ],
        ),
      ),
    );
  }
}