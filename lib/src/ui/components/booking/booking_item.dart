import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingItem extends StatelessWidget {
  const BookingItem({
    Key key,
    this.name,
    this.specialist,
    this.clickBack,
  }) : super(key: key);

  final String name, specialist;
  final Function clickBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickBack,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    specialist,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
