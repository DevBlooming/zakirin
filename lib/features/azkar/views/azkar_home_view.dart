import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/constants.dart';
import 'package:zakirin/core/utils/styles.dart';
import 'package:zakirin/features/azkar/views/azkar_category_view.dart';

class AzkarHomeView extends StatelessWidget {
  const AzkarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.azkarSectionTitle,
          textDirection: TextDirection.rtl,
          style: TextStyle(
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
      ),
      // body: const MorningAzkarScreen(),
      body: const AzkarCategoryView(),
    );
  }
}
