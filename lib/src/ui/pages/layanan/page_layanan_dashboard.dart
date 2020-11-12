import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/models/event.dart';
import 'package:smkdev/src/models/layanan.dart';
import 'package:smkdev/src/ui/components/cards/cards_event.dart';
import 'package:smkdev/src/ui/components/cards/cards_layanan.dart';

import '../../components/cards/cards_about.dart';

class LayananDashboard extends StatefulWidget {
  @override
  _LayananDashboardState createState() => _LayananDashboardState();
}

class _LayananDashboardState extends State<LayananDashboard> {
  get getLayanan => [
        Layanan(
            id: 1,
            nama: "Ruang Operasi",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/ruang_operasi.jpg"),
        Layanan(
            id: 1,
            nama: "Ruang Pemeriksaan",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/ruang_periksa.jpg"),
        Layanan(
            id: 1,
            nama: "Ruang Tunggu Pasien",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/ruang_tunggu.jpeg"),
      ];

  get getEvents => [
        Event(
            id: 1,
            nama: "Event 1",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/medicine_01.jpg",
            tanggal: DateTime.now()),
        Event(
            id: 1,
            nama: "Event 1",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/medicine_01.jpg",
            tanggal: DateTime.now()),
        Event(
            id: 1,
            nama: "Event 1",
            shortDesc: "abc",
            deskripsi: "bab",
            image: "assets/images/medicine_01.jpg",
            tanggal: DateTime.now()),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
                child: Text(
                  "Layanan",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(
                  "Fasilitas & Layanan Terkini",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                  height: 200,
                  child: LayananButtonsWidget(list: this.getLayanan)),
              Divider(),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: Text(
                  "Event & Promo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              EventButtonsWidget(list: this.getEvents)
            ],
          ),
        ),
      )),
    );
  }
}
