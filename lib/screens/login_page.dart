import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoinPageState createState() => _LoinPageState();
}

class _LoinPageState extends State<LoginPage> {
  var username;
  var password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFD22145),Color(0xFF813687),Color(0xFF1378c0)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        )
      ),
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: <Widget>[
          getSpace(30),
          Image.asset(
            "images/img.png",
            height: 150,
            width: 350,
          ),
          getSpace(30),
          getUsername(),
          getSpace(30),
          getPassword(),
          getSpace(30),
          MaterialButton(
          height: 40.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    onPressed: () {
            print(username + ""+ password);
            // Navigator.push(context,MaterialPageRoute(builder: (context)=>ToDoListPage()));
            },
    child: Text('Login',style: TextStyle(color: Colors.white),), color: Colors.yellow,
    )
        ],
      ),
    );
  }

  Widget getSpace(height) {
    return SizedBox(height: height);
  }

  Widget getUsername() {
    return TextField(
      onChanged: (username) {
        this.username = username;
      },
      decoration: InputDecoration(
        enabledBorder: (OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.pink))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.purple)),
      ),
    );
  }

  Widget getPassword() {
    return TextField(
      obscureText: true,
      onChanged: (password) {
        this.password = password;
      },
      decoration: InputDecoration(
        enabledBorder: (OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.pink))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.purpleAccent)),
      ),
    );
  }
}
