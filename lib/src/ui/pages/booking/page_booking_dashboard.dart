import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smkdev/src/models/doctor.dart';
import 'package:smkdev/src/models/home_doctor.dart';
import 'package:smkdev/src/ui/pages/booking/page_dokter_detail.dart';
import 'package:smkdev/src/ui/widgets/booking/widget_booking_item.dart';
import 'package:smkdev/src/ui/widgets/widget_header.dart';

class BookingDashboard extends StatefulWidget {
  const BookingDashboard({Key key, this.doctorList}) : super(key: key);

  @override
  _BookingDashboardState createState() => _BookingDashboardState();
  final List<Doctor> doctorList;
}

class _BookingDashboardState extends State<BookingDashboard> {
  List<HomeDoctor> doctorData = [];

  @override
  void initState() {
    super.initState();
    this.getJsonFile();
  }

  void getJsonFile() async {
    var jsonData = await rootBundle.loadString("assets/json/doctor.json");
    var decodedJson = json.decode(jsonData);
    for (int i = 0; i < decodedJson.length; i++) {
      doctorData.add(HomeDoctor.fromJson(decodedJson[i]));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          HeaderWidget(
            size: size,
            title: "Booking",
          ),
          this.doctorData.length == 0
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                  itemCount: this.doctorData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BookingItem(
                      doctor: this.doctorData[index],
                      clickBack: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BookingDoctorDetail(
                                      doctor: this.doctorData[index],
                                    )));
                      },
                    );
                  },
                )),
        ],
      ),
    );
  }
}
