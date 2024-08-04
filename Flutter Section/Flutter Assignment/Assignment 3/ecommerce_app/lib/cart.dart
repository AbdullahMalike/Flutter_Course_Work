import 'package:ecommerce_app/constrants/constant.dart';
// ignore: unused_import
import 'package:ecommerce_app/constrants/productdetail.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            // Header Section
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_circle_left_rounded),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "My Order",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Ongoing"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black54,
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Completed"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Items List
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Constant.cartList.length,
              itemBuilder: (context, index) {
                return getpopularui(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}

getpopularui(index) {
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
                          "${Constant.cartList[index].img}",
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
                   // top: 5,
                    left: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${Constant.cartList[index].name}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${Constant.cartList[index].desc}",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Quantity: ${Constant.cartList[index].selectedQuantity}",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Size: ${Constant.cartList[index].selectedSize}",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                        Row(
                          children: [
                            Text(
                                "Color: ${Constant.cartList[index].selectedcolor}",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54)),
                            Container(
                             // height: 20,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                // color: colorValue
                              ),
                            ),
                           // SizedBox(height: 10),
                          ],
                        ),
                        // Additional space below the color
                      ],
                      
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 10,
                    child: Column(
                      children: [
                        Text(
                          "Pkr: ${Constant.cartList[index].price * (Constant.cartList[index].selectedQuantity ?? 0)}",
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
