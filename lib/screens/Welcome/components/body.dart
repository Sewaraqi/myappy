import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/compnents/rounded_button.dart';
import 'package:newapp/screens/Login/login_screen.dart';
import 'package:newapp/screens/Signup/signup_screen.dart';
import 'package:newapp/screens/Welcome/components/background.dart';
import '../../../constants.dart';

// container multiple child widgets and manage them efficiently through width, height, padding, background color, etc.
// It is a widget that combines common painting, positioning, and sizing of the child widgets. ...
// A container widget is same as <div> tag in html
//to surround a child widget if we want some kind of container arount that to give it some margin and padding
class  Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //control how the widgets are alinged on
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Beauty Center",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                letterSpacing: 0.2,
                color: Colors.grey,
                fontFamily: 'IndieFlower',
              ),
            ),
            SizedBox(height: size.height * 0.03),
            // Image(image: NetworkImage('url'),)
            // Icon(Icons.refresh),
            // RaisedButton(onPressed: (){},child: Text("click me"),),
            // RaisedButton.icon(onPressed: (){},icon: Icon(Icons.mail),label: Text('mail me'),color: Colors.amber,),
            // Image(image: AssetImage("assets/images/test.jpg"), height: size.height * 0.4),
            // IconButton(onPressed: (){}, icon: Icon(Icons.phone),color: kPrimaryColor,),
            Image.asset("assets/images/test.jpg", height: size.height * 0.4,),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
               press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
               },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimarylightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}