import 'package:flutter/material.dart';

class IndexView extends StatelessWidget {
  const IndexView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu_outlined),
                        onPressed: () {},
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [getcardui(), getcardui(), getcardui()],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "New Arrivals",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "View All",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        getarrivalcard(),
                        getarrivalcard(),
                        getarrivalcard(),
                        getarrivalcard()
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Popular",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "View All",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  getpopularui(),
                  getpopularui(),
                  getpopularui()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

getcardui() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 5.0,
        ),
      ],
    ),
    child: Card(
      elevation: 0,
      child: Container(
        height: 200,
        width: 280,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                "assets/shopping.jpg",
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "50% Off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 10,
              right: 0,
              child: Text(
                "On everything today",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(), backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text("Get Now"),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

getarrivalcard() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade200,
      elevation: 5.0,
      child: Container(
        width: 180,
        height: 250,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/shoes1.jpeg",
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    right: 10,
                    top: 5,
                    child: Icon(Icons.favorite_border_outlined))
              ],
            ),
            Text(
              "The Marc Jacobs",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Traveler Tote",
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Pkr: 3000",
              style: TextStyle(fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    ),
  );
}

getpopularui() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Expanded(
      child: Column(
        children: [
          Card(
            elevation: 7,
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
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade600,
                            ),
                            Text(
                              "(4.6)",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
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
