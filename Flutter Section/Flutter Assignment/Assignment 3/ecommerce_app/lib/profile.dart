import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/myimg.jpg",
                                height: 90,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 30,
                          left: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abdullah",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "abdullahmalikae2002@gmail.com",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 350,
                    width: 325,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.person_3),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Personal Details",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.shopping_bag_rounded),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "My Order",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.favorite),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "My Favourite",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.local_shipping),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Shipping Address",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.credit_card),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "My Card",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.settings),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Setting",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 270,
                    width: 325,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.info_rounded),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "FAQ's",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.privacy_tip),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Privacy Policy",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.help),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Help Center",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade300),
                              // padding: EdgeInsets.only(left: 25),
                              child: Icon(Icons.contact_support),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Contact us",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
