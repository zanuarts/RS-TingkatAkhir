import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/models/event.dart';
import 'package:smkdev/src/models/layanan.dart';
import 'package:smkdev/src/ui/components/cards/cards_event.dart';
import 'package:smkdev/src/ui/components/cards/cards_layanan.dart';
import 'package:smkdev/src/ui/widgets/widget_header.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              size: size,
              title: "Layanan",
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Text(
                "Fasilitas & Layanan Terkini",
                style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: LayananButtonsWidget(list: this.getLayanan)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 0),
              child: Text(
                "Event & Promo",
                style: TextStyle(
                    color: colorPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: EventButtonsWidget(list: this.getEvents),
            )
          ],
        ),
      ),
    ));
  }
}
