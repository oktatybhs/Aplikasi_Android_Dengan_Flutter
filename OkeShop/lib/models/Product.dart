import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/sepatu.jpg",
      // "assets/images/ps4_console_white_2.png",
      // "assets/images/ps4_console_white_3.png",
      // "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Shoes for Man",
    price: 30.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/iphone.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Iphone 11 Pro Max",
    price: 500.99,
    description: description2,
    rating: 4.9,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/macbook.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Apple Macbook Pro 2020",
    price: 1360.99,
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  // Product(
  //   id: 4,
  //   images: [
  //     "assets/images/macbook.jpg",
  //   ],
  //   colors: [
  //     Color(0xFFF6625E),
  //     Color(0xFF836DB8),
  //     Color(0xFFDECB9C),
  //     Colors.white,
  //   ],
  //   title: "Logitech Head",
  //   price: 20.20,
  //   description: description,
  //   rating: 4.1,
  //   isFavourite: true,
  // ),
];

const String description =
    "The men’s classic moccasin slippers with curves design embody this house shoes simple style and casual charm. Concise striped ...";

const String description2 =
    "The iPhone 11 Pro Max screen has curved corners that follow a beautifully curved design, and all of these corners ...";

const String description3 =
    "Apple MacBook Pro 13-inch 2020 is a macOS laptop with a 13.30-inch display that has a resolution of 1600x2560 pixels. It is ...";
