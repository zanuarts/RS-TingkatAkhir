import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingDashboard extends StatefulWidget {
  @override
  _BookingDashboardState createState() => _BookingDashboardState();
}

class _BookingDashboardState extends State<BookingDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            child: Text(
              "Booking",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}