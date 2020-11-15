import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/models/partner.dart';
import 'package:smkdev/src/ui/components/cards/cards_partner.dart';
import 'package:smkdev/src/ui/widgets/widget_header.dart';

class PartnerDashboard extends StatefulWidget {
  @override
  _PartnerDashboardState createState() => _PartnerDashboardState();
}

class _PartnerDashboardState extends State<PartnerDashboard> {
  List<Partner> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response.toString());

    return parsed != null
        ? parsed
            .map<Partner>((json) => new Partner.fromJson(json))
            .toList()
        : null;
  }

  List<Partner> partnerList = List<Partner>();

  void getDummyPartner() async {
    var jsonData = await rootBundle.loadString("assets/json/partner.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        partnerList.add(Partner.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.getDummyPartner();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        ],
      ),
    );
  }
}