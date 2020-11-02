import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackDashboard extends StatefulWidget {
  @override
  _FeedbackDashboardState createState() => _FeedbackDashboardState();
}

class _FeedbackDashboardState extends State<FeedbackDashboard> {
  static final Map<String, String> ratingMap = {
    'puas': 'Puas',
    'biasa': 'Biasa',
    'tidak puas': 'Tidak Puas',
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
          color: Colors.black87,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
        children: <Widget>[
          Text(
            "Feedback Pelayanan Rumah Sakit SMKDEV",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Terimakasih atas kepercayaan Bapak/Ibu dalam memakai aplikasi dan pelayanan Rumah Sakit SMKDEV. Silahkan berikan saran melalui form ini, karena setiap masukan sangat bermanfaat bagi peningkatan pelayanan dan aplikasi kami selanjutnya."
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
              initialKeyValue: _selectedRating
          ),
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
              initialKeyValue: _selectedRating
          ),
           SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}