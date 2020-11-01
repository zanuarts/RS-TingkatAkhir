import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:smkdev/src/constants/constant.dart';

class HomeDashboard extends StatefulWidget {
  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  Widget imageCarousel = new Container(
    height: 280,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Text(
                  "Sekilas Tentang RS. SMKDEV",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Text(
                  "SMKDEV komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ) dan Multimedia (MM) dari seluruh Indonesia.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: colorPrimary
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey
          )
        ),
        Container(
          decoration: BoxDecoration(
            color: colorPrimary
          )
        ),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotBgColor: Colors.transparent,
      dotPosition: DotPosition.bottomLeft,
      dotIncreasedColor: colorPrimary,
      dotSpacing: 18,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              "Temui Kami",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              "Rumah Sakit SMKDEV \nJl. Margacinta No. 29 \nSenin - Jumat : 08.00 - 20.00 \nSabtu : 08.00 - 17.00 \n\nKlinik SMKDEV \nJl. Mars Barat I No. 9 \nSenin - Jumat : 08.00 - 20.00 \nSabtu : 08.00 - 13.00 \n\nBPJS \nSenin - Jumat : 07.00 - 14.00, 16.00 - 19.00 \nSabtu : 07.00 - 12.00",
            ),
          ),
          Container(
            height: 560,
            decoration: BoxDecoration(
              color: colorPrimary,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Tentang Kami",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 20),
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    height: 200,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text(
              "Berita Terbaru",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              height: 200,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      color: Colors.red,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.green,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 160.0,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Text(
                "Kontak & Pengaduan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              child: Text(
                "Rumah Sakit SMKDEV \nJl. Margacinta No. 29 \n\ninfo@smk.dev \n\n+622 7000 0000 \t+622 7000 0000",
              ),
            ),
        ]
      ),
    );
  }
}