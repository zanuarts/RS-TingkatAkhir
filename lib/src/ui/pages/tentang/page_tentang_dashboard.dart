import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';
import '../../components/cards/cards_doctor.dart';

class TentangDashboard extends StatefulWidget {
  @override
  _TentangDashboardState createState() => _TentangDashboardState();
}

class _TentangDashboardState extends State<TentangDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: colorPrimary,
        appBar: AppBar(
          backgroundColor: colorPrimary,
          elevation: 0.0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Tentang Kami",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
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
            ],
          ),
        ))));
  }
}
