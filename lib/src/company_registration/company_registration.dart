import 'package:flutter/material.dart';
import 'package:startupdemo/src/company_registration/private_ltd_company.dart';

class CompanyRegistrationPage extends StatelessWidget {
   List title;

  int id;
  CompanyRegistrationPage(int id){
    this.id=id;
    switch (id) {
      case 1:
title = ["Private Limited Company","Limited Liability Partnership","Partnership Firm","Proprietorship firm"];
  
        break;
      case 2:
  title = ["Trade Mark Regn","Copy Rights","Pateint","Other IP Rights"];

      break;

      case 3:
  title = ["ROC AMC for Pvt Ltd","ROC AMC for LLP","Annual Return Fillings"];

      break;

      case 4:
  title = ["Rent Aggrement","Sale Deed","Will Drafting & Regn","Property  Regn"];

      break;

      default:
    }
  }

  //List subtitle = ["Start your pvt ltd in 10 days","Start your OPC in 10 days","Start your LLP in 20 days","Get it in 2 days"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: title.length,
      itemBuilder: (BuildContext context, int index)
     { 
      return Card(
          child: new ListTile(
        title: Text("${title[index]}"),
        //subtitle: Text("${subtitle[index]}"),
        trailing: Icon(Icons.arrow_right),
        leading: Icon(Icons.monetization_on),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PrivateLtdCompany(index)));
        },
      ),
    );
     },);
  }
}