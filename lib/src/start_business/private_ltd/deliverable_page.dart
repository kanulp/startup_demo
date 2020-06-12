import 'package:flutter/material.dart';

class DeliverablePage extends StatelessWidget {
  List deliverableList = ["DIN for 2 directors","Digital signature Token for all promotors","Company name approval","MOA + AOA","Incorporate certificate","New incorporation kit","Company PAN card"];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: deliverableList.length,
      itemBuilder: (BuildContext context, int index) { 
      return ListTile(leading: Icon(Icons.check_box),
      title: Text(deliverableList[index]),
      );
      
     },);
  }
}