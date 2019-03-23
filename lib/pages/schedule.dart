import 'package:flutter/material.dart';
import 'package:new_wra/pages/widget.dart';

class SchedulePage extends StatefulWidget{
  @override
  _SchedulePageState createState() => new _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Schedule Test")),
      drawer: CustomDrawer(),
      body: new Center(
          child: new Text("Schedule Test")
      ),
    );
  }

}