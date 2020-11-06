import 'package:flutter/material.dart';

import '../../../constants/constant.dart';

class HomeAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            children: [
                              Image.asset('assets/images/medicine_01.jpg'),
                              // Container(
                              //   height: 60,
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //   ),
                              // ),
                              // Text(
                              //   "Rumah sakit kami menjual obat-obatan ilegal"
                              // )
                            ],
                          )
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
          );
  }
}