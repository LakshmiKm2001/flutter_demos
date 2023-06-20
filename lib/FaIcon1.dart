import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FaIcon1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ficon")),
      body: Center(child: FaIcon(FontAwesomeIcons.googlePay,size: 100,color: Colors.blue,)),
    );
  }
}
