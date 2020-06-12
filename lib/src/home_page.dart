import 'package:flutter/material.dart';
import 'package:startupdemo/src/aggrements_documents/aggrements_documents.dart';
import 'package:startupdemo/src/company_registration/company_registration.dart';
import 'package:startupdemo/src/compliance_tax.dart/compliance_tax.dart';
import 'package:startupdemo/src/intellectual_property/IntellectualProperty.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
   final drawerItems = [
    new DrawerItem("Company Registration", Icons.store_mall_directory),
    new DrawerItem("Intellectual Property", Icons.security),
    new DrawerItem("Compliance & Tax", Icons.markunread),
    new DrawerItem("Aggrements & Documents", Icons.group),
    new DrawerItem("DSC", Icons.group),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return CompanyRegistrationPage(1);
      case 1:
        return CompanyRegistrationPage(2);
        //return IntellectualPropertyPage();
      case 2:
        return CompanyRegistrationPage(3);
        //return  ComplianceTaxPage();
      case 3: 
        return CompanyRegistrationPage(4);
        //return AggrementsDocumentsPage();

      default:
        return Text("Error");
    }
  }
  
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        new ListTile(
          leading: new Icon(d.icon),
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Karan"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}