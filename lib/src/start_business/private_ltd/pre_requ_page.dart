import 'package:flutter/material.dart';

class PreRequisitePage extends StatelessWidget {
  List preq = ["Minimum 2 shareholder","Minimum 2 directors","The directors and shareholders can be same person","One of the directors must be indian resident","DIN","DSC"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: preq.length,
      itemBuilder: (BuildContext context, int index) { 
      return ListTile(leading: Icon(Icons.check_box),
      title: Text(preq[index]),
      );
      
     },);
  }
}