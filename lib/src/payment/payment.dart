import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Make Payment"),),
      body: Column(children: <Widget>[
        TextField()
      ],),
    );
  }
}