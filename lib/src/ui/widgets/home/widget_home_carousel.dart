import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class HomeCarousel extends StatelessWidget {
  static final List<String> imgSlider = [
    'hospital_01.jpg',
    'hospital_02.jpg',
    'hospital_03.jpg',
    'hospital_04.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: [
          Carousel(
            boxFit: BoxFit.cover,
            // images: [
            //   Container(
            //     decoration: BoxDecoration(
            //       color: Colors.grey
            //     ),
            //     child: Column(
            //       children: <Widget>[
            //         Padding(
            //           padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            //           child: Text(
            //             "Sekilas Tentang RS. SMKDEV",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 30,
            //               fontWeight: FontWeight.bold
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            //           child: Text(
            //             "SMKDEV komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ) dan Multimedia (MM) dari seluruh Indonesia.",
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 14,
            //             ),
            //           ),
            //         ),
            //       ],
            //     )
            //   ),
            //   Container(
            //     decoration: BoxDecoration(
            //       color: colorPrimary
            //     )
            //   ),
            //   Container(
            //     decoration: BoxDecoration(
            //       color: Colors.grey
            //     )
            //   ),
            //   Container(
            //     decoration: BoxDecoration(
            //       color: colorPrimary
            //     )
            //   ),
            // ],
            images:[
              ExactAssetImage('assets/images/hospital_01.jpg'),
              ExactAssetImage('assets/images/hospital_02.jpg'),
              ExactAssetImage('assets/images/hospital_03.jpg'),
              ExactAssetImage('assets/images/hospital_04.jpg')
            ],
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomLeft,
            dotIncreasedColor: colorPrimary,
            dotSpacing: 18,
          ),
          Positioned(
            child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                      child: Text(
                        
                        "Sekilas Tentang RS Tingkat Akhir",
                        
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                blurRadius: 20.0,
                                color: Colors.black,
                                offset: Offset(5.0, 5.0),
                                ),
                            ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: Text(
                        "RS Tingkat Akhir merupakan komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ) dan Multimedia (MM) dari seluruh Indonesia.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          shadows: [
                            Shadow(
                                blurRadius: 20.0,
                                color: Colors.black,
                                offset: Offset(5.0, 5.0),
                                ),
                            ],
                        ),
                      ),
                    ),
                  ]),)
        ],
      )
    );
  }
}