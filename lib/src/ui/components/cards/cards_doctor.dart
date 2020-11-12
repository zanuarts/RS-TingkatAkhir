import 'package:flutter/material.dart';
import 'package:smkdev/src/models/doctor.dart';

class DoctorCards extends StatefulWidget {
  final Doctor doctor;
  const DoctorCards({Key key, this.doctor}) : super(key: key);

  @override
  _DoctorCardsState createState() => _DoctorCardsState();
}

class _DoctorCardsState extends State<DoctorCards> {
  @override
  Widget build(BuildContext context) {
    String _name = "news title";
    String _spes = "null";

    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 5),
      height: 160,
      width: 140,
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
                  height: 115,
                  width:140,
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
                margin: EdgeInsets.fromLTRB(10,15,10,0),
                child: Text(
                  _name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10,5,10,0),
                child: Text(
                  _spes
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