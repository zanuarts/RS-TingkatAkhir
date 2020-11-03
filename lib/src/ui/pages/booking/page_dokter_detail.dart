import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/components/booking/booking_form_user.dart';
import 'package:smkdev/src/ui/components/booking/doctor_schedule_item.dart';
import 'package:smkdev/src/ui/components/buttons/button_primary.dart';
import 'package:smkdev/src/ui/components/widget_short_description.dart';

class BookingDoctorDetail extends StatefulWidget {
  @override
  _BookingDoctorDetailState createState() => _BookingDoctorDetailState();
  const BookingDoctorDetail({Key key, this.name, this.specialist})
      : super(key: key);
  final String name, specialist;
}

class _BookingDoctorDetailState extends State<BookingDoctorDetail> {
  void showFormBooking(Size size) {
    final _formKey = GlobalKey<FormState>();
    bool _autoValidate = false;
    TextEditingController textNama = new TextEditingController();
    TextEditingController textHp = new TextEditingController();
    TextEditingController textEmail = new TextEditingController();
    String _nama, _nohp, _email = '';
    String _kelamin = '';
    bool dense = false;

    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (_, __, ___) {
        // return BookingFormUser(size: size);
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 0.6,
            builder: (BuildContext context, s) {
              return Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Stack(
                  children: [
                    Positioned(
                      left: size.width * 0.4,
                      child: Container(
                        width: 40,
                        height: 10,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: colorPrimary),
                      ),
                    ),
                    ListView(
                      controller: s,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Maaf, anda belum terdaftar dalam aplikasi. Harap daftar terlebih dahulu untuk dapat membooking jadwal dengan dokter yang bersangkutan",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 40),
                            Form(
                                key: _formKey,
                                autovalidate: _autoValidate,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nama",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[50],
                                          border: Border.all(
                                              color: Colors.grey[300]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: TextFormField(
                                        controller: textNama,
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                                          if (value.length < 3) {
                                            print('is empty');
                                            return 'Username must be more than 6 charater';
                                          } else
                                            return null;
                                        },
                                        onSaved: (String val) {
                                          _nama = val;
                                        },
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            hintText: "Nama",
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "No Handphone",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[50],
                                          border: Border.all(
                                              color: Colors.grey[300]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: TextFormField(
                                        controller: textHp,
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.length < 3) {
                                            print('is empty');
                                            return 'Username must be more than 6 charater';
                                          } else
                                            return null;
                                        },
                                        onSaved: (String val) {
                                          _nohp = val;
                                        },
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            hintText: "No Handphone",
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "Jenis Kelamin",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: RadioListTile(
                                              value: "laki",
                                              selected: _kelamin == 'laki',
                                              activeColor: colorPrimary,
                                              groupValue: _kelamin,
                                              title: Text(
                                                "Laki-laki",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              onChanged: (val) {
                                                print(val);
                                                _kelamin = val;
                                              }),
                                        ),
                                        Expanded(
                                          child: RadioListTile(
                                              value: "perempuan",
                                              selected: _kelamin == 'perempuan',
                                              activeColor: colorPrimary,
                                              groupValue: _kelamin,
                                              title: Text(
                                                "Perempuan",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              onChanged: (val) {
                                                print(val);
                                                _kelamin = val;
                                              }),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[50],
                                          border: Border.all(
                                              color: Colors.grey[300]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: TextFormField(
                                        controller: textNama,
                                        keyboardType: TextInputType.text,
                                        validator: (value) {
                                          if (value.length < 3) {
                                            print('is empty');
                                            return 'Username must be more than 6 charater';
                                          } else
                                            return null;
                                        },
                                        onSaved: (String val) {
                                          _nama = val;
                                        },
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20, right: 20),
                                            hintText: "email",
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ButtonPrimary(
                                          buttonText: "Batal",
                                          color: Colors.grey[200],
                                          textColor: Colors.black,
                                          onClicked: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        ButtonPrimary(
                                          buttonText: "Daftar",
                                          color: colorPrimary,
                                          textColor: Colors.white,
                                          onClicked: () {},
                                        ),
                                      ],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colorPrimary,
      body: Stack(
        children: [
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
            margin: EdgeInsets.only(top: size.height * 0.16),
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(radius: 80),
                SizedBox(height: 10),
                Text(
                  widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  widget.specialist,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.45,
              maxChildSize: 0.85,
              builder: (BuildContext context, s) {
                return Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Stack(
                    children: [
                      Positioned(
                        left: size.width * 0.4,
                        child: Container(
                          width: 40,
                          height: 10,
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorPrimary),
                        ),
                      ),
                      ListView(
                        controller: s,
                        padding: EdgeInsets.only(top: 30, bottom: 10),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jadwal",
                                style: TextStyle(
                                    color: colorPrimary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              ScheduleItem(
                                day: "Senin",
                                time: "08.00-14.00",
                                hospital: "RSUD Cengkareng",
                              ),
                              ScheduleItem(
                                day: "Rabu",
                                time: "08.00-14.00",
                                hospital: "RSUD Tangerang Selatan",
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          ShortDescriptionWidget(
                            title: "Biografi",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                          SizedBox(height: 20),
                          ShortDescriptionWidget(
                            title: "Kredensial",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                          SizedBox(height: 20),
                          ShortDescriptionWidget(
                            title: "Afliansi Akademik",
                            shortDesc:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        width: size.width,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(boxShadow: darkShadow, color: Colors.white),
        child: ButtonPrimary(
          buttonText: "Buat Janji",
          color: colorPrimary,
          textColor: Colors.white,
          onClicked: () {
            showFormBooking(size);
          },
        ),
      ),
    );
  }
}
