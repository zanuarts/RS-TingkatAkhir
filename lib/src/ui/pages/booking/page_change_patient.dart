import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/components/dialog_form.dart';

class ChangePatient extends StatefulWidget {
  @override
  _ChangePatientState createState() => _ChangePatientState();
}

class _ChangePatientState extends State<ChangePatient> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        shadowColor: Colors.black38,
        title: Text(
          "Ganti Pasien",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          PatientListItem(
            selected: true,
          ),
          PatientListItem(
            selected: false,
          ),
          PatientListItem(
            selected: false,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              showFormBooking(size, false, context, () {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: colorPrimary,
                ),
                Text(
                  "Tambah Baru",
                  style: TextStyle(
                      color: colorPrimary,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PatientListItem extends StatelessWidget {
  const PatientListItem({
    Key key,
    this.selected,
  }) : super(key: key);
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama pasien 1",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                Text(
                  "Jenis kelamin : Laki - laki",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Status : Kamu",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            selected
                ? Icon(
                    Icons.check_circle_rounded,
                    color: colorPrimary,
                    size: 35,
                  )
                : Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                  )
          ],
        ));
  }
}
