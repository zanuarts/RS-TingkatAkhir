import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/components/booking/bottom_nav.dart';

class BookingConfirm extends StatefulWidget {
  @override
  _BookingConfirmState createState() => _BookingConfirmState();
}

class _BookingConfirmState extends State<BookingConfirm> {
  DateTime _date = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              color: colorPrimary,
            ),
            Positioned(
              left: 20,
              top: 40,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
                backgroundColor: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.1),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 40),
                  SizedBox(height: 10),
                  Text(
                    "DOKTOR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "UMUM",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: size.height * 0.32),
                // left: 30, right: 30),
                width: size.width,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(left: size.width * 0.45),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                      width: size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Booking Details",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 40),
                          Text(
                            "Booking untuk",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alexander Gracia",
                                style: TextStyle(
                                    color: colorPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Ganti pasien",
                                  style: TextStyle(
                                      color: colorPrimary,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Saya sendiri",
                                style: TextStyle(
                                    color: colorSecondary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                  height: 15,
                                  child: VerticalDivider(
                                    color: colorPrimary,
                                    thickness: 2,
                                  )),
                              Text(
                                "Laki - laki",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Booking tanggal",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(DateFormat('yyyy-MM-dd').format(_date),
                                      style: TextStyle(
                                          color: colorPrimary,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  IconButton(
                                      icon: Icon(
                                        Icons.date_range,
                                        color: colorPrimary,
                                      ),
                                      onPressed: () {
                                        setState(() async {
                                          _date = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2020),
                                            lastDate: DateTime(2200),
                                          );
                                        });
                                      }),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Pesan :",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[400]),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              maxLines: 5,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Sampaikan pesan anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBooking(
        size: size,
        buttonClick: () {},
        buttonText: "Konfirmasi",
        colorButton: colorPrimary,
        textColor: Colors.white,
      ),
    );
  }
}
