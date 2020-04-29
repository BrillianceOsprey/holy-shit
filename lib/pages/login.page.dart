import 'package:flutter/material.dart';
import 'package:login_minimalist/widget/button.dart';
import 'package:login_minimalist/widget/first.dart';

import 'package:login_minimalist/widget/inputEmail.dart';
import 'package:login_minimalist/widget/password.dart';
import 'package:login_minimalist/widget/textLogin.dart';
import 'package:login_minimalist/widget/verticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
} 

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: IconButton(
            icon: Image.asset('assets/images/fuck.jpeg'), 
            onPressed: () { },
          ),
        title: Text(
          'Welcome Baby',
        style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 38,
              fontWeight: FontWeight.w900,
          ) ,
       )
     ),
           
      
      body: Container(
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlueAccent]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(),
                  TextLogin(),
                ]),
                InputEmail(),
                PasswordInput(),
                ButtonLogin(),
                FirstTime(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


