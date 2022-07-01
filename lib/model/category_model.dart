
import 'package:flutter/material.dart';

class Category {
  final String categoryImage;
  final String categoryName;
  final Color color;

  const Category({
    required this.categoryImage,
    required this.categoryName,
    required this.color,
  });
}

List<Category> category = [
  Category(
    categoryImage: 'assets/images/icons8-send-49.png',
    categoryName: 'Send',
    color: Colors.deepOrange,
  ),
  // Category(
  //   categoryImage: 'assets/images/icons8-pay-100.png',
  //   categoryName: 'Pay',
  //   color: Colors.pinkAccent,
  // ),
  // Category(
  //   categoryImage: 'assets/images/icons8-withdraw-100.png',
  //   categoryName: 'Withdraw',
  //   color: Colors.blue,
  // ),
  // Category(
  //     categoryImage: 'assets/images/icons8-bill-100.png',
  //     categoryName: 'Bill',
  //     color: Colors.purple),
  // Category(
  //   categoryImage: 'assets/images/icons8-voucher-100.png',
  //   categoryName: 'Voucher',
  //   color: Colors.green,
  // ),
];
