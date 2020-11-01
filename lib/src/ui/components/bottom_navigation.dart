import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';
import 'package:smkdev/src/ui/components/more_popup.dart';
import 'package:smkdev/src/ui/pages/booking/page_booking_dashboard.dart';
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

  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    pageList.add(HomeDashboard());
    pageList.add(LayananDashboard());
    pageList.add(BookingDashboard());
    pageList.add(ProfileDashboard());
    pageList.add(MorePop());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pageList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            title: Text('Layanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Booking'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            title: Text('More'),
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: colorPrimary,
        backgroundColor: Colors.white,
        iconSize: 30,
        elevation: 0.0,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}