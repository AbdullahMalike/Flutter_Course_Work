import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_circle_left_rounded),
                    style: ButtonStyle(),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "My Order",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Ongoing"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black54),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Complated"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ),
                ],
              ),
              getpopularui(Colors.lightBlue),
              getpopularui(Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}

getpopularui(Color colorValue) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Expanded(
      child: Column(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/shoes1.jpeg",
                          height: 70,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 10,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gia Borghini",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "RHW Raise 1 Shoes",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Quantity: 1",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Size: 42",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Row(
                          children: [
                            Text("Color: ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54)),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: colorValue),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: [
                        Text(
                          "Pkr 2000",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
