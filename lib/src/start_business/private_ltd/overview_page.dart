import 'package:flutter/material.dart';

class OverViewPage extends StatefulWidget {
  @override
  _OverViewPageState createState() => _OverViewPageState();
}

class _OverViewPageState extends State<OverViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Kickstart your Pvt.Ltd company within 15 days at Rs.6999."),
        Text("Any time. Any where. ")
    ],);
  }
}