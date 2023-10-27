import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_left_rounded)),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Material(
                      color: Colors.white,
                      elevation: 4,
                      shape: CircleBorder(),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert, color: Colors.black54),
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
              getnotificationui(
                "assets/man.jpg",
                "AA",
                "Kristine. There are many variations of passages of lorem ipsum available",
                "2 Hour agr",
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Divider()),
            ]),
          ),
        ),
      ),
    );
  }
}

getnotificationui(String url, String avatar, String title, String subTitle) {
  return ListTile(
    // tileColor: Colors.white,
    leading: CircleAvatar(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(500)),
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(url))),
      ),
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "${title.split(' ')[0]}", // Get the first word
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text:
                " ${title.split(' ').skip(1).join(' ')}", // Get the rest of the text
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
    subtitle: Container(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          "$subTitle",
          style: TextStyle(fontSize: 12),
        )),
    // trailing: Text("$trailing"),
  );
}
