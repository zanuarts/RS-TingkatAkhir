import 'package:flutter/material.dart';

class ProfileDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                print('back');
                Navigator.pop(context);
              },
              color: Colors.black87,
            ),
            title: Text('Detail'),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Text("Kontrol Mingguan"),
                Text("Kontrol Mingguan"),
                Text("Kontrol Mingguan"),
                SizedBox(height:10),
            Row(
              children: [
                Text("Kontrol Mingguan"),
                Text("Kontrol Mingguan"),
              ],
            ),
            SizedBox(height:10),
            Text("Kontrol Mingguan"),
            SizedBox(height:10),
            Text("Kontrol Mingguan"),
          ],
        ),
      ),
    );
  }
}