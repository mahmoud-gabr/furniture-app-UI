import 'package:flutter/material.dart';

class CategoryItemModel {
  final String image;

  final String title;

  final Color color;
  final int index;
  final void Function() onTap;

  CategoryItemModel({
    required this.image,
    required this.title,
    required this.onTap,
    required this.color,
    required this.index,
  });
}
