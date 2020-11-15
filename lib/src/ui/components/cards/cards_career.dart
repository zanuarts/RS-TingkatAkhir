import 'package:flutter/material.dart';
import 'package:smkdev/src/models/career.dart';

class CareerCards extends StatefulWidget {
  final Career career;

  const CareerCards({Key key, this.career}) : super(key: key);
  @override
  _CareerCardsState createState() => _CareerCardsState();
}

class _CareerCardsState extends State<CareerCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5,5,5,5),
      height: 225,
      width: 400,
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
                  height: 150,
                  width:400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.career.image),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10,15,10,0),
                child: Text(
                  widget.career.posisi,
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10,5,10,0),
                child: Text(
                  "Click for more info!"
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