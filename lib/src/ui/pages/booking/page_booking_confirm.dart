import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/pages/booking/page_change_patient.dart';
import 'package:smkdev/src/ui/widgets/booking/bottom_nav.dart';

class BookingConfirm extends StatefulWidget {
  const BookingConfirm({Key key, this.doctorName, this.specialist})
      : super(key: key);

  @override
  _BookingConfirmState createState() => _BookingConfirmState();

  final String doctorName, specialist;
}

class _BookingConfirmState extends State<BookingConfirm> {
  DateTime _date = DateTime.now();

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
                    widget.doctorName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    widget.specialist,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: size.height * 0.27),
                width: size.width,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Stack(
                  children: [
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
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ChangePatient()));
                                    })
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
                              pickDateTime(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      DateDescription(
                                        size: size,
                                        date: _date,
                                        icon: Icon(Icons.calendar_today,
                                            color: Colors.grey),
                                        name: "Tanggal",
                                        text: DateFormat('dd-MM-yyyy')
                                            .format(_date),
                                      ),
                                      SizedBox(height: 5),
                                      DateDescription(
                                          size: size,
                                          date: _date,
                                          icon: Icon(Icons.alarm,
                                              color: Colors.grey),
                                          name: "Jam",
                                          text: DateFormat('hh:mm')
                                              .format(_date)),
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

  void pickDateTime(BuildContext context) {
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
  }
}

class DateDescription extends StatelessWidget {
  const DateDescription({
    Key key,
    @required this.size,
    @required DateTime date,
    this.name,
    this.icon,
    this.text,
  }) : super(key: key);

  final Size size;
  final String name, text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 20),
              Text(name,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500)),
            ],
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
