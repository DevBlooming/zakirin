import 'package:flutter/material.dart';
import 'package:zakirin/data/data.dart';
import 'package:zakirin/pages/details_page.dart';
import 'package:zakirin/theme/palette.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size.width <= 768 ? 2 : 3,
          childAspectRatio: size.width <= 768 ? 1 : 4,
          // childAspectRatio: 3 / 2, // 3 rows & 2 columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // shrinkWrap: true,
        children: [
          for (final category in azkarCategories)
            Card(
              elevation: 15,
              shadowColor: Palette.backgroundColor2,
              clipBehavior: Clip.none,
              margin: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(
                        appBarTitle: category.title,
                        azkarList: category.listData,
                      ),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Palette.cardBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  category.title,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Palette.whiteColor,
                  ),
                ),
              ),
            ),

          // Container(
          //   padding: const EdgeInsets.all(5.0),
          //   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.of(context).push(
          //         MaterialPageRoute(
          //           builder: (context) => AzkarDetails(
          //             appBarTitle: category.title,
          //             azkarList: category.listData,
          //           ),
          //         ),
          //       );
          //     },
          //     style: TextButton.styleFrom(
          //       backgroundColor: Palette.cardBackgroundColor,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //     ),
          //     child: Text(
          //       category.title,
          //       textDirection: TextDirection.rtl,
          //       textAlign: TextAlign.center,
          //       style: const TextStyle(
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold,
          //         color: Palette.whiteColor,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
