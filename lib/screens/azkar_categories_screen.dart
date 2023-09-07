import 'package:flutter/material.dart';
import 'package:zakirin/data/azkar_data.dart';
import 'package:zakirin/screens/azkar_details.dart';
import 'package:zakirin/theme/pallete.dart';

class AzkarCategoriesScreen extends StatelessWidget {
  const AzkarCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: size.width <= 768 ? 1 : 4,
          // childAspectRatio: 3 / 2, // 3 rows & 2 columns
          // crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
        ),
        // shrinkWrap: true,
        children: [
          for (final category in azkarCategories)
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AzkarDetails(
                        appBarTitle: category.title,
                        azkarList: category.listData,
                      ),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Palette.cardBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Palette.whiteColor,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
