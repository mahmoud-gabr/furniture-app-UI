import 'package:flutter/material.dart';

class FurnitureItemModel {
  final String image;
  final String name;
  final String des;
  final double price;
  final double rate;
  final Color color;

  FurnitureItemModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.des,
    required this.color,
  });
}
