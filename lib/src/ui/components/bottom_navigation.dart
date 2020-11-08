import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/models/doctor.dart';
import 'package:smkdev/src/ui/pages/booking/page_booking_dashboard.dart';
import 'package:smkdev/src/ui/pages/feedback/page_feedback_dashboard.dart';
import 'package:smkdev/src/ui/pages/home/page_home_dashboard.dart';
import 'package:smkdev/src/ui/pages/layanan/page_layanan_dashboard.dart';
import 'package:smkdev/src/ui/pages/profile/page_profile_dashboard.dart';

class MainBottomNav extends StatefulWidget {
  @override
  _MainBottomNavState createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int _selectedIndex = 0;
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Doctor> doctorList = List<Doctor>();

  void getDummyDoctor() {
    String spes = "Umum";

    for (var i = 0; i < 10; i++) {
      if (i % 7 == 0) {
        spes = "Ahli syaraf";
      } else if (i % 2 == 0) {
        spes = "Ahli syaraf";
      } else if (i % 3 == 0) {
        spes = "Ahli mata";
      } else if (i % 4 == 0) {
        spes = "Ahli telinga";
      } else {
        spes = "Ahli gigi";
      }

      doctorList.add(Doctor.withId((i + 1), "Doktor $i", spes));
    }
  }

  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(HomeDashboard());
    pageList.add(LayananDashboard());
    pageList.add(BookingDashboard(
      doctorList: doctorList,
    ));
    pageList.add(ProfileDashboard());
    pageList.add(FeedbackDashboard());
    super.initState();
    this.getDummyDoctor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_outlined),
            label: "Layanan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_rounded), label: 'More'),
        ],
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: colorPrimary,
        backgroundColor: Colors.white,
        iconSize: 25,
        elevation: 0.0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
