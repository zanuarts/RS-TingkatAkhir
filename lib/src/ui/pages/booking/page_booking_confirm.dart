import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
      body: Stack(
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
              margin: EdgeInsets.only(top: size.height * 0.27, bottom: 20),
              // left: 30, right: 30),
              width: size.width,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Center(
                          child: Text(
                            "BOOKING DETAILS",
                            style: TextStyle(
                                color: colorPrimary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 10),
                        //   width: size.width,
                        //   height: 1,
                        //   color: colorPrimary,
                        // ),
                        SizedBox(height: 30),
                        Text(
                          "Pasien",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.account_circle_rounded,
                                color: Colors.grey,
                                size: 40,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Alexander Gracia",
                                        style: TextStyle(
                                            color: colorLabel1,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Kamu | Laki - laki",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                              ),
                              SizedBox(width: 5),
                              IconButton(
                                  icon: Icon(Icons.edit,
                                      color: colorLabel1, size: 22),
                                  onPressed: () {})
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Waktu",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            DatePicker.showDateTimePicker(
                              context,
                              showTitleActions: true,
                              minTime: DateTime(2020, 1, 1),
                              maxTime: DateTime(3000, 1, 1),
                              onChanged: (date) {
                                print("DATE : $date");
                              },
                              onConfirm: (time) {
                                setState(() {
                                  _date = time;
                                });
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width * 0.6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_today,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(width: 20),
                                              Text("Tanggal",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Text(
                                              DateFormat('dd-MM-yyyy')
                                                  .format(_date),
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      width: size.width * 0.6,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(Icons.alarm,
                                                  color: Colors.grey),
                                              SizedBox(width: 20),
                                              Text("Jam",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          Text(
                                              DateFormat('hh:mm').format(_date),
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: colorLabel1,
                                      size: 22,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Catatan",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
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
