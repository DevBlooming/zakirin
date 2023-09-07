import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    required this.listData,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final List<Map<String, dynamic>> listData;
  final Color color;
}
