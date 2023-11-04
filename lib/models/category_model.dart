import 'package:flutter/material.dart';
import 'package:zakirin/models/zikr_model.dart';

class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.title,
    required this.listData,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final List<ZikrModel> listData;
  final Color color;
}
