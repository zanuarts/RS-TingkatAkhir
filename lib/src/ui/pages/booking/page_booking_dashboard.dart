import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/ui/components/booking/booking_item.dart';
import 'package:smkdev/src/ui/components/booking/header_booking.dart';

class BookingDashboard extends StatefulWidget {
  @override
  _BookingDashboardState createState() => _BookingDashboardState();
}

class _BookingDashboardState extends State<BookingDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          HeaderBooking(size: size),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return BookingItem(
                    name: "Doktor $index",
                    specialist: index % 2 == 0 ? "Umum" : "Ahli syaraf");
              },
            ),
          ),
        ],
      ),
    );
  }
}
