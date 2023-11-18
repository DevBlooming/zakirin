import 'package:flutter/material.dart';
import 'package:zakirin/pages/category_page.dart';
import 'package:zakirin/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.appNameArabic,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Constants.darkSkies1,
                Constants.darkSkies2,
              ],
            ),
          ),
        ),
      ),
      // body: const MorningAzkarScreen(),
      body: const CategoryPage(),
    );
  }
}
