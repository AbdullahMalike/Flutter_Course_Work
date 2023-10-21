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
          backgroundColor: Color.fromARGB(255, 15, 107, 49),
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                // icon: Icon(Icons.chalet_outlined),
                child: Text('Chats', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Status", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Calls", style: TextStyle(color: Colors.white)),
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
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Status",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                  getstatusui("assets/boy.avif", Colors.grey, "My Status",
                      "10 min ago"),
                  Container(
                    padding: EdgeInsets.only(left: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Text("Recent updates",
                        style: TextStyle(fontSize: 15, color: Colors.black54)),
                  ),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Rafay", "1 min ago"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Ahtasham", "6:00 pm"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Arsalan", "4:00 am"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Araib", "5:30 pm"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Anees", "1:00 pm"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Anas", "6:00 pm"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Moiz", "10:00 pm"),
                  getstatusui(
                      "assets/boy.avif", Colors.grey, "Saadullah", "Yesterday"),
                  getstatusui("assets/boy.avif", Colors.grey, "Abdul Rehman",
                      "4 min ago"),
                ],
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getcallui("Saad", "28 minutes ago", "assets/boy.avif"),
                    getcallui("Araib", "1 hour ago", "assets/boy.avif"),
                    getcallui(
                        "Ahtasham", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui(
                        "Arsalan", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui(
                        "Ahtasham", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui("Moiz", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui(
                        "Araib", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui("Saad", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui("Papa", "Yesterday, 12:35 pm", "assets/boy.avif"),
                    getcallui("Papa", "28 minutes ago", "assets/boy.avif"),
                    getcallui("Rafay", "28 minutes ago", "assets/boy.avif"),
                  ],
                ),
              ),
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
    tileColor: Colors.white,
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

getstatusui(String url, Color cColor, String title, String subTitle) {
  return ListTile(
    tileColor: Colors.white,
    leading: CircleAvatar(
      backgroundColor: cColor,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3),
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

getcallui(String title, String subtitle, String url) {
  return ListTile(
    tileColor: Colors.white,
    leading: CircleAvatar(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(500)),
            image: DecorationImage(image: AssetImage(url), fit: BoxFit.cover)),
      ),
    ),
    title: Text("$title"),
    subtitle: Text("$subtitle"),
    trailing: Icon(
      Icons.call,
      color: Colors.green,
    ),
  );
}
