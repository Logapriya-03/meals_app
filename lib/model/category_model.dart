import 'package:flutter/material.dart';

class CategoryModel {
  const CategoryModel({required this.id, required this.title,
    this.color = Colors.blueAccent});

  final String id;
  final String title;
  final Color color;
}
