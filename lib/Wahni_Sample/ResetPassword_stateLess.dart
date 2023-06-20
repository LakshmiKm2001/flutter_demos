import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ResetPassword1(),
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
          )));
}

// var showpass=true;
ValueNotifier<bool>showpass=ValueNotifier(true);

class ResetPassword1 extends StatefulWidget{

  @override
  State<ResetPassword1> createState() => _ResetPassword1State();
}

class _ResetPassword1State extends State<ResetPassword1> {
  TextEditingController pass        = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  TextEditingController newpass     = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body:  Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "data:image/png;base64,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"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ValueListenableBuilder(valueListenable: showpass,builder: (context, value, child) => 
               textformfield(text: 'Password', controller: pass),
            )
            ),
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textformfield(text: 'New Password', controller: newpass),
            ),
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textformfield(text: 'Confirm Password', controller: confirmpass,),
            ),
      
      
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:
                  ElevatedButton(onPressed: () {
                     if( newpass.text == confirmpass.text){
                
                      final snackBar = SnackBar(
             content: const Text('Password Reset Successful'),
               action: SnackBarAction(
                 label: 'Undo',
                 onPressed: () {
                 },
               ),
             );
             ScaffoldMessenger.of(context).showSnackBar(snackBar);
               }
    
  },child: const Text("Reset Password"),),
      )],
        ));
  }

  TextFormField textformfield({required String text,required TextEditingController controller}) {
    return TextFormField(
            obscureText: showpass.value,
            obscuringCharacter: "*",
            decoration: InputDecoration(
                hintText: text,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(onPressed: (){  
                             
            showpass.value=!showpass.value; 
          }, icon:Icon(showpass.value?Icons.visibility_off:Icons.visibility)),
                    ),
                    
          );
  }
}
  
