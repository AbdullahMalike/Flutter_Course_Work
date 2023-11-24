
import 'package:counterapp/Class6/Screens/account.dart';
// import 'package:counterapp/Class6/Screens/home1.dart';
import 'package:counterapp/Class6/Screens/setting.dart';
import 'package:flutter/material.dart';


// import 'index.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State {
  int _selectedTab = 0;

  List _pages = [
    // Center(child: NewHome()),
    Center(
      child: Account(),
    ),
    Center(
      child: SettingView(),
    ),
    // Center(
    //   child: ProfileView(),
    // ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Setting"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

    
    );
  }
}