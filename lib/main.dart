import 'package:bogazicionline/screens/genderScreen.dart';
import 'package:bogazicionline/screens/home_screen.dart';
import 'package:bogazicionline/screens/login_screen.dart';
import 'package:bogazicionline/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boğaziçi Online',
      theme: ThemeData(
        cursorColor: Color(0xff9013ed),
      ),
      home: WelcomeScreen(),
    );
  }
}
