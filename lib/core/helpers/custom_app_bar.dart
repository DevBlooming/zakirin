import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/styles.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    title: Text(
      title,
      textDirection: TextDirection.rtl,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        // color: Colors.white,
      ),
    ),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Styles.primaryColor,
            Styles.tertiaryColor,
          ],
        ),
      ),
    ),
  );
}
