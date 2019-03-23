import 'package:flutter/material.dart';
import 'package:new_wra/pages/widget.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Sign Up Test")),
      drawer: CustomDrawer(),
      body: new Center(
        child: new Text("Sign Up Test")
      ),
    );
  }

}