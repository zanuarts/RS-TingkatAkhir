import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/models/career.dart';
import 'package:smkdev/src/models/partner.dart';
import 'package:smkdev/src/ui/components/cards/cards_career.dart';
import 'package:smkdev/src/ui/components/cards/cards_partner.dart';

class PartnerDashboard extends StatefulWidget {
  @override
  _PartnerDashboardState createState() => _PartnerDashboardState();
}

class _PartnerDashboardState extends State<PartnerDashboard> {
  List<Partner> partnerList = List<Partner>();
  List<Career> careerList = List<Career>();

  void getDummyPartner() async {
    var jsonData = await rootBundle.loadString("assets/json/partner.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        partnerList.add(Partner.fromJson(decodedJson[i]));
      }
    });
  }
  void getDummyCareer() async {
    var jsonData = await rootBundle.loadString("assets/json/career.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        careerList.add(Career.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.getDummyPartner();
    this.getDummyCareer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Partner & Career",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('back');
            Navigator.pop(context);
          },
          color: Colors.black87,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            alignment: Alignment.center, // Make the hint in the middle vertically
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15.0,
                  color: colorPrimary.withOpacity(0.1),
                  offset: Offset(2.0, 2.0),
                )
              ]
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle:
                      TextStyle(
                        color: colorPrimary.withOpacity(0.5)
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search, color: colorPrimary),
                  onPressed: () {}
                )
              ],
            ),
          ),
          SizedBox(height:10),
          Text(
            "Partner",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          SizedBox(height:10),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int id) {
                return PartnerCards(
                  partner: partnerList[id],
                );
              },
              itemCount: partnerList == null ? 0 : partnerList.length,
            ),
          ),    
          SizedBox(height:10),
          Text(
            "Career",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          ),
          Container(
            height: 700,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int id) {
                return CareerCards(
                  career: careerList[id],
                );
              },
              itemCount: careerList == null ? 0 : careerList.length,
            ),
          ), 
        ],
      ),
    );
  }
}