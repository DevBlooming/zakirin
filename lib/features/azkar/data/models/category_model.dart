import 'package:flutter/material.dart';
import 'package:zakirin/features/azkar/data/models/zikr_model.dart';

class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.categoryName,
    required this.azkarListName,
    this.color = Colors.orange,
  });

  final String id;
  final String categoryName;
  final List<ZikrModel> azkarListName;
  final Color color;
}
