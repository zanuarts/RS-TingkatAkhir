import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/components/buttons/button_primary.dart';
import 'package:smkdev/src/ui/pages/about-app/page_about_app.dart';

import '../tentang/page_tentang_dashboard.dart';

class FeedbackDashboard extends StatefulWidget {
  @override
  _FeedbackDashboardState createState() => _FeedbackDashboardState();
}

class _FeedbackDashboardState extends State<FeedbackDashboard> {
  static final Map<String, String> ratingMap = {
    'puas': 'Puas',
    'biasa': 'Biasa',
    'tidak_puas': 'Tidak Puas',
  };

  String _selectedRating = ratingMap.keys.first;

  @override
  Widget build(BuildContext context) {
    void onRatingSelected(String ratingKey) {
      setState(() {
        _selectedRating = ratingKey;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.black,
            ),
            tooltip: "Tentang Aplikasi Ini",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutAppPage()),
              );
            },
          )
        ],
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
          children: <Widget>[
            Text(
              "Formulir Feedback Pelayanan Rumah Sakit SMKDEV",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                "Terimakasih atas kepercayaan Bapak/Ibu dalam memakai aplikasi dan pelayanan Rumah Sakit SMKDEV. Silahkan berikan saran melalui form ini, karena setiap masukan sangat bermanfaat bagi peningkatan pelayanan dan aplikasi kami selanjutnya."),
            SizedBox(
              height: 20,
            ),
            Text(
              "Apa yang anda rasakan saat mendapatkan pelayanan kami?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bagaimana pendapat anda tentang pelayanan yang kami berikan?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dimana kekurangan kami?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bagaimana tingkat kepuasan anda terhadap pelayanan/ aplikasi yang ada?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoRadioChoice(
                choices: ratingMap,
                onChange: onRatingSelected,
                initialKeyValue: _selectedRating),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bagaimana tingkat kemudahan anda terhadap pelayanan/ aplikasi yang ada?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CupertinoRadioChoice(
                choices: ratingMap,
                onChange: onRatingSelected,
                initialKeyValue: _selectedRating),
            SizedBox(
              height: 20,
            ),
            Text(
              "Saran penyempurnaan untuk kami",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ButtonPrimary(
              buttonText: "Submit",
              color: colorPrimary,
              textColor: Colors.white,
              onClicked: () {},
            )
          ],
        ),
      ),
    );
  }
}
