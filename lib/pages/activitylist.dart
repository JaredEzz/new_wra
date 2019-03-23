import 'package:flutter/material.dart';
import 'package:new_wra/pages/widget.dart';

class ActivityListPage extends StatefulWidget{
  @override
  _ActivityListPageState createState() => new _ActivityListPageState();
}

class _ActivityListPageState extends State<ActivityListPage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Activity List Test")),
      drawer: CustomDrawer(),
      body: new Center(
          child: new Text("Activity List Test")
      ),
    );
  }

}