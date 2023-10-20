import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Periodic Table"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Colors.pink.shade200,
                      child: const Center(
                        child: Text(
                          "1\nH",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade100,
                  ),
                ],
              ),
              //2md row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.pink.shade200,
                      child: const Center(
                        child: Text(
                          "1\nH",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                    )
                  ],
                ),
              ),
              // 3rd row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "1\nH",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              // 4th row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "1\nH",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              // 5th row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "1\nH",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              // 6th row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "1\nH",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              // 7th row
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "87\nFr",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.pink.shade200,
                    child: const Center(
                      child: Text(
                        "88\nRa",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.green.shade100,
                    child: const Center(
                      child: Text(
                        "Ac",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.green.shade100,
                    child: const Center(
                      child: Text(
                        "to",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    color: Colors.green.shade100,
                    child: const Center(
                      child: Text(
                        "No",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
