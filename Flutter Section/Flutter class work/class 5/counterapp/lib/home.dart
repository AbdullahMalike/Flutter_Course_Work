import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Container(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Abdullah"),
                  accountEmail: Text("abdullahmalikae2002@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    child: Text("A"),
                  ),
                  otherAccountsPicturesSize: Size.square(20.0),
                )),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Profile"),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Favourite"),
              leading: Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Setting"),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("History"),
              leading: Icon(
                Icons.history,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Logout"),
              leading: Icon(
                Icons.logout,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),

      // Column(
      //   children: [
      //     const Text(
      //       "0",
      //       style: TextStyle(fontSize: 20, color: Colors.black),
      //     ),
      //     Expanded(
      //       flex: 10,
      //       child: Container(
      //         // height: 200,
      //         width: 200,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         // height: 200,
      //         width: 200,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     const Text(
      //       "0",
      //       style: TextStyle(fontSize: 20, color: Colors.black),
      //     ),
      //   ],
      // )

      // Stack(
      //   children: [
      //     Container(
      //       height: 300,
      //       width: 300,
      //       color: Colors.red,
      //     ),
      //     Positioned(
      //       bottom: 0,
      //       left: 0,
      //       child: Container(
      //         height: 250,
      //         width: 250,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Positioned(
      //       bottom: 0,
      //       right: 0,
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.green,
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
