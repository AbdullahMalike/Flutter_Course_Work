import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                // icon: Icon(Icons.chalet_outlined),
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getchatui("assets/boy.avif", Colors.grey, "AA",
                        "Abdullah Akram", "Hi", "5:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "S", "Saadullah ",
                        "How are you", "6:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "A", "Ahtasham",
                        "suna kesa hai", "7:55 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "R", "Rafay",
                        "Flutter ka assignment bhej", "11:00 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "T", "Talha",
                        "OR ka Quiz ready krlia?", "9:35 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "R", "Rafiq",
                        "Hi", "5:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "A", "Asif", "Hi",
                        "5:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "S", "Sakhi",
                        "Bro kesa hai?", "5:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "AZ",
                        "Ahmed Zaman", "Assalam o Alikum", "10:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "A", "Araib",
                        "Suna kesa hai", "6:55 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "A", "Arsalan",
                        "5 min me a rha tere pas", "7:00 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "AM",
                        "Abdul Moiz", "Attendance ho rhi jaldi ao", "9:55 am"),
                    getchatui("assets/boy.avif", Colors.grey, "K", "Khizer",
                        "done", "5:55 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "S", "Shamsheer",
                        "set hai boss", "3:34 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "P", "Papa",
                        "Ghar kbt tk ao gy?", "10:00 pm"),
                    getchatui("assets/boy.avif", Colors.grey, "AA", "Wasiq",
                        "Ghomny ka plan bna lo", "8:55 pm"),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recent",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                getstatusui(
                    "assets/boy.avif", Colors.grey, "", "Rafay", "1 min ago")
              ],
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}

getchatui(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
    tileColor: Colors.grey.shade200,
    leading: CircleAvatar(
      backgroundColor: cColor,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(500)),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
      ),
      // child: Text(
      //   "$avatar",
      //   style: TextStyle(fontSize: 20, color: Colors.white),
      // ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
    trailing: Text("$trailing"),
  );
}

getstatusui(
    String url, Color cColor, String avatar, String title, String subTitle) {
  return ListTile(
    tileColor: Colors.grey.shade200,
    leading: CircleAvatar(
      backgroundColor: cColor,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(500)),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
      ),
      // child: Text(
      //   "$avatar",
      //   style: TextStyle(fontSize: 20, color: Colors.white),
      // ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
  );
}
