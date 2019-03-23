import 'package:flutter/material.dart';
import 'package:new_wra/pages/widget.dart';

class AddActivityPage extends StatefulWidget{
  @override
  _AddActivityPageState createState() => new _AddActivityPageState();
}

class _AddActivityPageState extends State<AddActivityPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("New Activity Test")),
      drawer: CustomDrawer(),
      body: new Center(
          child: new Text("New Activity Test")
      ),
    );
  }

}