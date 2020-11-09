import 'package:flutter/material.dart';
import 'package:smkdev/src/ui/components/cards/cards_doctor.dart';
import 'package:smkdev/src/ui/components/cards/cards_about.dart';

import '../../../constants/constant.dart';
import '../../pages/tentang/page_tentang_dashboard.dart';

class HomeAbout extends StatelessWidget {
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
                              builder: (context) => TentangDashboard()),
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
          )
        ],
      ),
    );
  }
}
