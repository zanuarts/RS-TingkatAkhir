import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/models/doctor.dart';
import 'package:smkdev/src/ui/pages/booking/page_dokter_detail.dart';
import 'package:smkdev/src/ui/widgets/booking/booking_item.dart';
import 'package:smkdev/src/ui/widgets/booking/header_booking.dart';

class BookingDashboard extends StatefulWidget {
  const BookingDashboard({Key key, this.doctorList}) : super(key: key);

  @override
  _BookingDashboardState createState() => _BookingDashboardState();
  final List<Doctor> doctorList;
}

class _BookingDashboardState extends State<BookingDashboard> {
  // List<Doctor> doctorList;

  // void getDummyData() {
  //   String spes = "Umum";

  //   for (var i = 0; i < 10; i++) {
  //     if (i % 7 == 0) {
  //       spes = "Ahli syaraf";
  //     } else if (i % 2 == 0) {
  //       spes = "Ahli syaraf";
  //     } else if (i % 3 == 0) {
  //       spes = "Ahli mata";
  //     } else if (i % 4 == 0) {
  //       spes = "Ahli telinga";
  //     } else {
  //       spes = "Ahli gigi";
  //     }

  //     doctorList.add(Doctor.withId((i + 1), "Doktor $i", spes));
  //   }

  //   print(doctorList);
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          HeaderBooking(size: size),
          widget.doctorList.length == 0
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                  itemCount: widget.doctorList.length,
                  itemBuilder: (BuildContext context, int index) {
                    // TODO : Data that send to booking detail is Object of "Doctor" or just id of the "Doctor"
                    return BookingItem(
                      doctor: widget.doctorList[index],
                      clickBack: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BookingDoctorDetail(
                                      doctor: widget.doctorList[index],
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
