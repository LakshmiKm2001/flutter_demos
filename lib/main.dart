//widget build=materialapp
//widget tree/UI attching to screen=runapp
//3modes=debug mode...profile mode...release mode**

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/AlertBox.dart';
import 'package:flutter_application_1/FaIcon1.dart';
import 'package:flutter_application_1/LottieAnimation.dart';
import 'package:flutter_application_1/stack%20grid.dart';
import 'package:flutter_application_1/staggerdd_grid.dart';
import 'package:flutter_application_1/customappbar.dart';
import 'package:flutter_application_1/farmers%20UI.dart';
import 'package:flutter_application_1/grid%20view.dart';
import 'package:flutter_application_1/grid%20with%20image_text.dart';
import 'package:flutter_application_1/grid_count.dart';
import 'package:flutter_application_1/grid_custom.dart';
import 'package:flutter_application_1/grid_extend.dart';
import 'package:flutter_application_1/grid_view1.dart';
import 'package:flutter_application_1/grid_view_bulder.dart';
import 'package:flutter_application_1/listview_fruits.dart';
import 'package:flutter_application_1/list_with_custom.dart';
import 'package:flutter_application_1/listview_with_builder.dart';
import 'package:flutter_application_1/phoneList_lstvwBuildr.dart';
import 'package:flutter_application_1/registration.dart';
import 'package:flutter_application_1/sliver.dart';
import 'package:flutter_application_1/snackBarDemo.dart';
import 'package:flutter_application_1/stackDemo.dart';
import 'package:flutter_application_1/staggered_grid_screen.dart';
import 'package:flutter_application_1/staggeredd_grid_sample.dart';
import 'package:flutter_application_1/tab%20%20in%20flutter.dart';
import 'package:flutter_application_1/validation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'navigation drawer.dart';
import 'second.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MaterialApp(
      home:Mainscreen(),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
     )));
}

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Registrationpage()));
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("MY APPLICATION")),
    
          ///BODY AS ICON IN CENTER
           // body: Center(child:Icon(Icons.add_to_home_screen_sharp,size: 50,color: Colors.cyan),),
    
          ///BODY AS TEXT IN CENTER
           // body: Center(child:Text("MY APP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.indigo),) ,),
    
          ///BODY AS MULTICHILD/COLOUMN
          body: Container(  
                 //add bg color decor
             height: double.infinity,
             width: double.infinity,
            color:Color.fromARGB(255, 236, 37, 23),
            // decoration: BoxDecoration( //add shape..bg img...
            //   image:DecorationImage(
            //   //fit: BoxFit.fill,  //fit the img fully to screen
            //     image:NetworkImage(""))),
             
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //coz colm allignmt is by default .start
                  children: const[
                    
    
               // Icon(Icons.ac_unit,size:100,),
    
            ///ADDING ASSET IMAGE
                //Image(image: AssetImage("assets/icons/icon.png")),
           /// ADDING NETWORK IMG
                Image(image:NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUEAAACdCAMAAAAdWzrjAAAAkFBMVEXtIyj////sAADtHiP97u7tISbtExrtGiDsAAb++Pj4urvtGB7/+/vuMjT6zs7sAAv4tLT96urziovydHX+8/PvTlD729v1np71o6T73N3zi4z60dHyfH385OTzgYL85+fxbW7uPkD0lJX5xsf3tLXwX2D4wMD2rK3wWlvwZ2fvR0ruODnvUVP1oKHwXF30mJg8NYAFAAAJPElEQVR4nO2aCdeiOBaGSYCwm09RZJdFZNGv/P//bnITRK2e7rbPTFczc+5zqk6BhCUvdw2laQiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIP88FuMAlbDPzjGZ/vc+1P8QjE1hLihTwT3O+Scn2UFVo4QKPmz25IU7/eAkujuR3UdS///DS/JOZ31w0igGooISXdu/C3j/JA7yFhV8wBuQzd2lZV6WIhjWn/iwxjNU8AF3hRb7q805k3zgwhoq+IoNChrBX0yrHyhoetzmnqmZ/8nTrQuTcZva4g9n3nNaf5OClh2MaZN2mlfbC5RzW9m4KdB007Llvngyofbq60tOp/TYXy59fMxv1+XnnxW0bFVXz7ump3YXsXSPMU9/KOipKpzBG9EZ7DALtnkQF74Y4iT5JTt/PWg3R3EnS4xjjFLdm/pjwE1Kb2VzbEKNeo+bMLiltyrzNWm6JUb01aRNGYbVEDyeblaQWZ7iELdJkWURlQM8Wp2LpNhEX0pSi16rMh8DugEFKR/jS1EUbsW5R+swPp/7ZhBNDU2dJbe70Vuq31P7cMwMxzG2pDqK/Yr1j2rgcpN3YeJd9+45HtmH7dEvgcWkqAKzFC9fpozl9SoFh4PiFiRqMkWtC7Pk9cZX++cJTmHXsyF+8I0eZNlN0XzUT6rpYqhtJ+porbaUMnHyJmFVLur+CDMw0xd5oR/it3Y/X3VcT66yBt+5cpMfR08/CO+ol5QrFSTODBlP8uGNbt9aOpuKeWrb4XTmYm7bt8qxeNl5Gh3xQ5bsizg8TDkIvd29Kfi9XOOek9gl71Sc5s8C1RlXY4WsJBshnN5dqF6nzC5rYYcy6thvc3CGPdlmX011ET5FmZQzad3jKLz2SAcws6LvZ7+MYar7KFpmbMzb+5utCVP3LGZCvOy7neAeKyM9ypHZpd9V4odUWuAp/RG26hJ16KsBGxie8LXEQq+TCmp8M9j0fKXV95CHAzzdu4L9jrSaiOIXaQ9ysi6kCpiewUCODRxW54Akpxulw+yHUS1yAowR4ptq5rL7K6hc95HXJGcYnFzFRW5SuxCMtqYiCylpJ6lzP1EaiC2n8/54Yr8MMyj2tWlRGmZlbxinyPgqD8GioL9pJU3nO1Q4uKnBPGPwUplSvEA4qZHDjAM4TJNZQacWbsYC6ZiFJmbLbLBCx1ICmrouTnREzGCTknnzJQ0NnJPCJmnE740NYzUw7R5aJCenIgjTWGymq3FjfiedNR03CcnOYXSj5Z1CG+Lp0p4MTa4PTrFPLrYcDgYh49dO7oMRXnqIYjJbqtUIoWBBH0fBWOU2ZGlSWzJjiQIHBA0Zq5WAUQU+qhK7dYNjrkucm4zK7Cx2R7DhRBgt03V4gbvVKGhSp/h2m5Ee75Q2cbgzzm27ufT3YakHmVQslumPCRdLwAYclXOYsL97IqWRV6vB174NslGqSQfsX7Zr+qNvo+wUyVye06tKNJFy5U7JQkGttiGGslgbzhxkII1cN5Mx2PnxWZf5K2CVM4q6vy4NNzk5ySbLyts1CDS6KCjtjpRydiYVDgez3aqA5o0+ybcwUO6aDDzuuH0o2D6tlaeQSobsNbrmo0oiri5F28/1u7x1diSGtyjoj87rifP1VwLtz7S+x0107KavAx3u1IPW6tmTcBmXwkXBtn0qaP1wSLiFMDhnCFCi+XcK2iKQ+elb1UMqpafLLAaeuZ17ZfpNpKXPioKCTuW/CRjQ1SRjDeZ21UUKrM6UVaWtpRQKGvNFwbu0l6eCFxkhlQ12yga3sw3q4NHl4sWXl4gZP84Ub+pWyqioTHAnErRUcDbk3ygIux3YoLuL3bZ17we265sVfUswTXhyMxB1nh7arBu6rjto9LzEwfIlDg4iGEmvHqSicCyNoO6Q89Gh5nBE5fZbGwQFGwMcGd4QhSS+F/KTfWibc+gjB1WiSC+Ovh8Ksq+H2CGVfROFd+YMa6lnNJBQ/LXofcjvl8KQIds3iu1DQav2yVy9aDx+eFSzZFgXcrH6DCVzcbQjv6MgHFWZGd4EiUTNFx3UUVlJlqpZk8G0fSoI7zIGo40pFDe0hPv39q+W6Y9hbIqTt1AjUWszyhlDEXlYDZkwhdmcNGbqFOreE1THEbTLpjSlJvtTBXUGl7xfiD8vEjC4EGmVuvINue2bghsw/IJDUJnkc2rrScYAvaneySk2X3Ec94+GTCloHeCZ96VoB+Swo5yu6DRYKscdwGa+KOVU5tuU/J6Cu73yYkrBbE+iMsqoKbFkkeePVNc5lelmt30oyGGwMyqJKb0mT7FXAxthKeRcTvO3dUpZGD0V1Hgu9TwpKy2Y6hqIoSqMnkrLLBqVHproqWD8VBC+u2ykFnF+lBkkF8P9SRROIopcXRls/fR2y6WAUblUN1zWoxf53WYb9/KmxoryCMDCTXqwQDj9lt+bcBLdKES8h4KmkkKxvTHTemmaz8zkN2PZjaU1KQW9m7MoCJWjH76sCX7fldUnSRQlW1Kq9ng/L2CN0aKgzuRP4+V5LinXZYKwTs1tHl6eq1L7KK6blzVq2s2lsBNzBpLm89gohAzDWC8tx2k76gXuVninuu4grDNVMZ9XYsiun4Ptfvfz+tXt5S35FVj9o8LmIbyIPfSWiuKwNgE1cGQpSZRlWXHaw6P6bfSyys/0Q3y5uPmVq1+YVseu20y6ygQ6C6YqPFw9Bv/ZJjjM/ZkYNuU3b9lOSxY0bVG0qea1PyUu/1zOaznO5mC3xPe3j7uzqc+KbcumY3Q6FW1orqYpfgLVxebHNzlSJiqK6S48TsyJFM9PEurDyLMTgAUdSq2XfcY9fV568djzZ+49L2Fzkb+F0Yq/lteFQFmWoSKvzSpuM7cZONPrcRyH50ca+B4TiFtK+19TO7Jg1VBtdVBriMxIhQNXY/tYFPhvoxpCIfNP6Kb8JsXhteie51lv58iz5n9WiGmJyJ34vvI+67An2dAQY1pR3b92LE040Ndh/oLDw5OM3SuMN+tFt7lnLybHgjxOUcC/ymuEEa2Bva6+CUEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQ5J/hX9keoqcYd6W1AAAAAElFTkSuQmCC"),
                height: 400,width: 400,),
    
                  // Text("HEY USER..!!!",
                  //       style: TextStyle(
                  //       fontSize: 30,
                  //       color: Colors.black54,
                  //       fontWeight: FontWeight.bold),
                  // )
                ],
              ),
            ),
          ));
  }
}
