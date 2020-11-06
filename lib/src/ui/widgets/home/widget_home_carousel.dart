import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
  }
}