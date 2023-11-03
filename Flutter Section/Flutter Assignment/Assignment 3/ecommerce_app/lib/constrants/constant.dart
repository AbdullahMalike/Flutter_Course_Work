import 'dart:core';

import 'package:ecommerce_app/constrants/productdetail.dart';

class Constant {
  static List<ProductsDetailsView> cartList = [];
  static String name = "";
  static String email = "";
  static String password = "";
  static String confirm_password = "";

  var MycustomList = [
    ProductsDetailsView(
        "assets/sh5.webp",
        "Ndure",
        "MEN'S SPORTY SHOES",
        5499,
        4,
        178,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),
    ProductsDetailsView(
        "assets/sh6.webp",
        "ACE",
        "MEN ATHLEISURE",
        4399,
        4,
        100,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),
    ProductsDetailsView(
        "assets/sh3.webp",
        " Ndure",
        "Men's Sporty Sneakers",
        4999,
        4,
        200,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),
    ProductsDetailsView(
        "assets/sh4.webp",
        " Ndure",
        "Men's Lace-up Style Mesh",
        5999,
        4,
        276,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),

// popular item data
    ProductsDetailsView(
        "assets/sh7.webp",
        "Ndure",
        "Lace-up Men's Formals",
        7999,
        4.6,
        222,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),
    ProductsDetailsView(
        "assets/sh8.webp",
        "Ndure",
        "Leather Lace-up Shoes",
        7999,
        4.7,
        150,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"]),
    ProductsDetailsView(
        "assets/sh9.webp",
        "Ndure",
        "Men's Stylish Dress Shoes",
        4499,
        4.8,
        90,
        "Stylish and comfortable, these shoes combine fashion and function for your active lifestyle. Elevate your footwear game with these trendy kicks",
        [38, 39, 40, 41, 42],
        ["Black", "White", "Grey", "Brown"])
  ];
}
