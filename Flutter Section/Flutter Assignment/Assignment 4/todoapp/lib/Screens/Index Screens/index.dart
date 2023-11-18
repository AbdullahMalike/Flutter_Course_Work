import 'package:flutter/material.dart';
import 'package:todoapp/Screens/Index%20Screens/home.dart';

class IndexView extends StatefulWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: HomeView(),
    ),
    Center(
        // child: CartView(),
        ),
    Center(
        // child: NotificationView(),
        ),
    Center(
        // child: ProfileView(),
        ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.white,
              ),
              label: "Calender"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.timer_sharp,
                color: Colors.white,
              ),
              label: "Focus"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
