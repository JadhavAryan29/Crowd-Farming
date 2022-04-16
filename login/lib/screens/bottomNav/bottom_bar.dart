import 'package:flutter/material.dart';
import 'package:login/screens/Home/home_page.dart';
import 'package:login/screens/bottomNav/location_page.dart';
import 'package:login/screens/historyPage/history_page.dart';
import 'package:login/screens/profilePage/profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  List<Widget> list = [
    Home(),
    HistoryPage(),
    LocationPage(),
    ProfilePage(),
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50]!.withOpacity(0.5),
      body: list[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[50]!.withOpacity(0.5),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          iconSize: 30,
          currentIndex: currentIndex,
          onTap:changePage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
  }
}
