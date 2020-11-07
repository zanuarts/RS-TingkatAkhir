import 'dart:html';

import 'package:flutter/material.dart';

class ChangePatient extends StatefulWidget {
  @override
  _ChangePatientState createState() => _ChangePatientState();
}

class _ChangePatientState extends State<ChangePatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black38,
        title: Text("Ganti Pasien"),
      ),
      body: ListView(
        children: [
          Container(
              child: Row(
            children: [
              Column(
                children: [
                  Text("Nama pasien 1"),
                  Text("Nama pasien 1"),
                  Text("Nama pasien 1"),
                ],
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
              )
            ],
          ))
        ],
      ),
    );
  }
}
