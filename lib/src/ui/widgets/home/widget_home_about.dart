import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/models/home_doctor.dart';
import 'package:smkdev/src/ui/components/cards/cards_doctor.dart';
import 'package:smkdev/src/ui/components/cards/cards_about.dart';
import 'package:smkdev/src/ui/pages/about/page_about_app.dart';



class HomeAbout extends StatefulWidget {
  @override
  _HomeAboutState createState() => _HomeAboutState();
}

class _HomeAboutState extends State<HomeAbout> {
  List<HomeDoctor> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response.toString());

    return parsed != null ? parsed.map<HomeDoctor>((json) => new HomeDoctor.fromJson(json)).toList() : null;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      decoration: BoxDecoration(
        color: colorPrimary,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Tentang Kami",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Selengkapnya",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      onTap: () {
                        print("More clicked!");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutDashboard()),
                        );
                      },
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: AboutCards(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              height: 200,
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/home_doctor.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  List<HomeDoctor> homeDoctor = parseJson(snapshot.data.toString());
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int id){
                      return DoctorCards();
                    },
                    itemCount: homeDoctor == null ? 0 : homeDoctor.length,
                  );
                }
              )
              // child: ListView(
              //   // This next line does the trick.
              //   scrollDirection: Axis.horizontal,
              //   children: <Widget>[
              //     DoctorCards(),
              //     DoctorCards(),
              //     DoctorCards(),
              //     DoctorCards(),
              //     DoctorCards(),
              //   ],
              // ),
            ),
          )
        ],
      ),
    );
  }
}
