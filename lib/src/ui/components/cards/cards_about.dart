import 'package:flutter/material.dart';

class AboutCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 240,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 6,
                        offset: Offset(1,1)
                      )]
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 160,
                              width:380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                ),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/medicine_01.jpg'),
                                  fit: BoxFit.cover
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Rumah Sakit Kami Menjual Obat Ilegal, Minuman Keras, dan Juga Narkoba."
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    )
                  );
  }
}