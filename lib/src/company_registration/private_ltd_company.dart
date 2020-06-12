import 'dart:collection';

import 'package:flutter/material.dart';

class PrivateLtdCompany extends StatefulWidget {
  int id;
  @override
  _PrivateLtdCompanyState createState() => _PrivateLtdCompanyState();

  PrivateLtdCompany(int id){
    this.id=id;
  }
}

class _PrivateLtdCompanyState extends State<PrivateLtdCompany> with SingleTickerProviderStateMixin{
  
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Private Ltd Company"),
        bottom: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.amber,
          tabs: [
          Tab(text: "Overview",),
          Tab(text: "Benefits"),
          Tab(text: "How it Works"),
          Tab(text: "Cost"),
          Tab(text: "Documents Required",)
        ],
        controller: _tabController,
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,),
        bottomOpacity: 1,
      ),
      body: TabBarView(
          children: [
        overviewTab(),
        benefits(),
        howItWorks(),
        costing(),
        documentsRequired(),
      ],
      controller: _tabController,),
    );
  }
  
  Widget overviewTab(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: <Widget>[
      Text("What is Private limited company?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
      SizedBox(
        height: 15.5
      ),
      Text("Private Limited Company registration is the most popular legal structure option for businesses in India. A private limited company can have a minimum of two members and a maximum of fifty members. The directors of a private limited company have limited liability to creditors. In a case of default, banks/creditors can only sell company’s assets but not personal assets of directors. If you want to start a company in India then make sure your company is registered as Company Registration should be your first priority. It is very important to register your company as a registered company have multiple advantages from easy to register to easy to dissolve."),

      ],),
    );
  }

  Widget benefits(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: <Widget>[
        Text("Registering a company offers many benefits. A registered company makes it genuine and increases the authenticity of your business."),
        SizedBox(
          height: 15.0),
        Text("""\u2022 Shields from personal liability and protects from other risks and losses\n
\u2022 Attracts more customers\n
\u2022 Procures bank credits and good investment from reliable investors with ease.\n
\u2022 Offers liability protection to protect your company’s assets\n
\u2022 Greater capital contribution and greater stability\n
\u2022 Increases the potential to grow big and expand\n
        """)
      ],),
    );
  }

  Widget howItWorks(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: <Widget>[
        Text("How It Works",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        SizedBox(height: 15.0,),
        Text("""Step 1: Application for DSC (Digital Signature Certificate).\n
Step 2: Apply for the DIN (Director Identification Number).\n
Step 3: Application for the name availability.\n
Step 4: Filing of the EMoa and EAOA to register private limited company.\n
Step 5: Apply for the PAN and TAN of the company.\n
Step 6: Issued certificate of incorporation by RoC with PAN and TAN.\n
Step 7: Opening a current bank account on company name.\n
        """),
      ],),
    );
  }
  Widget costing(){
    HashMap<String,String> map = HashMap<String,String>();
    map["Company Name Search"] = "Free";
    map["Consultancy on Registration and Name Availability"] = "Free";
    map["GST Registration (Optional)"] = "Free";
    map["2 DSC's"] = "1400.00";
    map["Government Fees"] = "1,000.00";
    map["Stamp Duty"] = "1,510.00";
    map["Documents Notarization Cost"] = "500.00";
    map["PAN and TAN Fees"] = "170.00";
    map["Professional Fees"] = "3500.00";
    map["Goods & Service Tax"] = "630.00";
    map["Total Cost"] = "8710.00";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            
                    child: ListView.builder(
                      
              itemCount: map.length,
              itemBuilder: (BuildContext context, int index) { 
                  String key = map.keys.elementAt(index);
                  return ListTile(
                    title: Text("$key"),
                    trailing: Text("${map[key]}"),
                  );
             },),
          ),
           
           Text("""* The above mentioned government fee has been calculated on minimum contribution of Rs.100000\n
* Stamp duty may vary state to state \n
* Extra charges for NRI/Foreign directors or Foreign shareholding companies
           """)
        ],
      ),
    );
  }

  Widget documentsRequired(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("""
\nDocuments required to register a Private Limited Company\n\n
1. Director’s PAN copy\n
2. Identity Proof i.e aadhar card/ Passport / Election Card / Driving Licence\n
3. Director’s  Address Proff i.e Electricity bill /Bank accounts statement / Telephone Bills\n
4. Each Director’s Photograph\n
5. Business Address Proof i.e Electricity Bills / Telephone Bills\n
6. NoC from Owner of registered office\n
7. Rent Aggrement if any\n
8. Contact details of Director’s
      """),
    );
  }

}