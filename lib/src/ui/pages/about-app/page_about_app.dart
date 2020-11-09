import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutAppPage extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "About us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SIMRS by SMKDEV",
              textAlign: TextAlign.center,
            ),
            Text("Version 1.0"),
            Divider(),
            Text("- Zanuar Ekaputra\n- Agung Satrio\n- Pratama Yoga")
          ],
        ),
      ),
    );
  }
}
