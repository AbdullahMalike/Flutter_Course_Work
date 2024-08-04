import 'package:ecommerce_app/colorselected.dart';
import 'package:ecommerce_app/constrants/constant.dart';
import 'package:ecommerce_app/constrants/productdetail.dart';
import 'package:ecommerce_app/home.dart';
// ignore: unused_import
import 'package:ecommerce_app/index.dart';
import 'package:flutter/material.dart';

import 'SizeSelector.dart';

class ShoesView extends StatelessWidget {
  ProductsDetailsView productdetail;

  late int selectedSize;
  late String selectedcolor;
  int quantity = 1;

  ShoesView(this.productdetail);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(productdetail.img),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomeView(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border:
                        Border(top: BorderSide(color: Colors.grey.shade200)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            productdetail.name,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            productdetail.desc,
                            style: TextStyle(fontSize: 16, color: Colors.black54),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                              ),
                              Text("( ${productdetail.reviews} Reviews)"),
                              // Spacer(),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Quantity: ",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    DropdownButton<int>(
                                      value: productdetail.selectedQuantity ?? 1,
                                      items: productdetail.quantityList
                                          .map<DropdownMenuItem<int>>(
                                            (int value) => DropdownMenuItem<int>(
                                              value: value,
                                              child: Text(value.toString()),
                                            ),
                                          )
                                          .toList(),
                                      onChanged: (int? value) {
                                        productdetail.selectedQuantity = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Size",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizeSelector(productdetail.sizeList.cast<int>(), (size) {
                          selectedSize = size;
                        }),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Color",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ColorSelector(productdetail.colorList.cast(), (color) {
                          selectedcolor = color;
                        }),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            productdetail.shdet,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                productdetail.price.toString() + " Pkr",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              padding: EdgeInsets.only(left: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (selectedSize != null) {
                                    productdetail.selectedSize = selectedSize;
                                    productdetail.selectedcolor = selectedcolor;
                                    int? selectedQuantity =
                                        productdetail.selectedQuantity;
                                    Constant.cartList.add(productdetail);
                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //   SnackBar(content: Text("Added to Cart")),
                                    // );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text("Please select a size")),
                                    );
                                  }
                                },
                                child: Text("Add to Cart"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  shape: StadiumBorder(),
                                ),
                              ),
                            ),
                           
                          ],
                        ),
                      ],
                    ),
                    
                  ),
                ),
              ),
            ],
          ),
        
        ),
        
      ),
    );
  }
}
