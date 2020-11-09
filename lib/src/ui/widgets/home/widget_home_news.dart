import 'package:flutter/material.dart';
import 'package:smkdev/src/ui/components/cards/cards_news.dart';

class HomeNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            NewsCards(),
            NewsCards(),
            NewsCards(),
            NewsCards(),
            NewsCards(),
          ],
        ),
      ),
    );
  }
}