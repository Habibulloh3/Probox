import 'package:flutter/material.dart';
import 'package:flutter_application_3/Screens/Responsive_Screens/Responsive_screen1.dart';
import 'package:flutter_application_3/Screens/Responsive_Screens/Responsive_screen3.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox1.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/confirmation_screen1.dart';
import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox_loginscreen.dart'; 



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily:"Concert" ,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontFamily: "Concert")))
      ),
      home: PhoneList(), 
    );
  }
}




