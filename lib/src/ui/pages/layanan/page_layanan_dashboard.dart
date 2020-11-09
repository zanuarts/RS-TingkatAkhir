import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/cards/cards_about.dart';
import '../../components/cards/cards_doctor.dart';

class LayananDashboard extends StatefulWidget {
  @override
  _LayananDashboardState createState() => _LayananDashboardState();
}

class _LayananDashboardState extends State<LayananDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
                child: Text(
                  "Layanan",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(
                  "Fasilitas & Layanan Terkini",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    DoctorCards(),
                    DoctorCards(),
                    DoctorCards(),
                    DoctorCards(),
                    DoctorCards(),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(
                  "Event & Promo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: AboutCards(),
                    );
                  })
            ],
          ),
        ),
      )),
    );
  }
}
