import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutDashboard extends StatefulWidget {
  @override
  _AboutDashboardState createState() => _AboutDashboardState();
}

class _AboutDashboardState extends State<AboutDashboard> {
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
