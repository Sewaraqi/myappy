import 'package:flutter/material.dart';
import 'package:newapp/screens/Login/login_screen.dart';
import 'package:newapp/screens/Signup/signup_screen.dart';
import 'package:newapp/screens/Welcome/welcome_page.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      home: WelcomePage(),
    );
  }
}
