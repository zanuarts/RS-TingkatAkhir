import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smkdev/src/models/news.dart';
import 'package:smkdev/src/ui/components/cards/cards_news.dart';

class HomeNews extends StatefulWidget {
  @override
  _HomeNewsState createState() => _HomeNewsState();
}

class _HomeNewsState extends State<HomeNews> {
  List<News> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed = json.decode(response.toString());

    return parsed != null
        ? parsed
            .map<News>((json) => new News.fromJson(json))
            .toList()
        : null;
  }

  List<News> newsList = List<News>();

  void getDummyDoctor() async {
    var jsonData = await rootBundle.loadString("assets/json/news.json");
    var decodedJson = json.decode(jsonData);
    setState(() {
      for (int i = 0; i < decodedJson.length; i++) {
        newsList.add(News.fromJson(decodedJson[i]));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getDummyDoctor();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Container(
        height: 260,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int id) {
            return NewsCards(
              news: newsList[id],
            );
          },
          itemCount: newsList == null ? 0 : newsList.length,
        )        
      ),
    );
  }
}