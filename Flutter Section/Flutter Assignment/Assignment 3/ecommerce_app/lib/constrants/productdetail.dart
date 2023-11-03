import 'package:flutter/material.dart';

class ProductsDetailsView {
  String img = "";
  String name = "";
  String desc = "";
  int price = 0;
  double rating = 0;
  int reviews = 0;
  String shdet = "";
  var sizeList = [];
  int selectedSize = 0;
  var colorList = [];
  String selectedcolor = "";
  var quantityList = List<int>.generate(10, (index) => index + 1);
  int? selectedQuantity;
  ProductsDetailsView(this.img, this.name, this.desc, this.price, this.rating,
      this.reviews, this.shdet, this.sizeList, this.colorList);
}
