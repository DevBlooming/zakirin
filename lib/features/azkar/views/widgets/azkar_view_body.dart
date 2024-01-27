import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/assets.dart';
import 'package:zakirin/core/utils/styles.dart';
import 'package:zakirin/features/azkar/data/azkar_data.dart';
import 'package:zakirin/features/azkar/views/azkar_details_view.dart';

class AzkarViewBody extends StatefulWidget {
  const AzkarViewBody({super.key});

  @override
  State<AzkarViewBody> createState() => _AzkarViewBodyState();
}

class _AzkarViewBodyState extends State<AzkarViewBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    int showCardResponsive() {
      if (size.width <= 280) {
        return 1;
      } else if (size.width <= 430) {
        return 2;
      } else if (size.width <= 768) {
        return 3;
      } else if (size.width <= 1024) {
        return 4;
      } else {
        return 6;
      }
    }

    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // crossAxisCount: size.width <= 768 ? 2 : 5,
          crossAxisCount: showCardResponsive(),
          // childAspectRatio: size.width <= 768 ? 1 : 4,
          // childAspectRatio: 3 / 2, // 3 rows & 2 columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // shrinkWrap: true,
        children: [
          for (final category in azkarCategories)
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AzkarDetailsView(
                      appBarTitle: category.categoryName,
                      azkarList: category.azkarListName,
                    ),
                  ),
                );
              },
              child: Container(
                // elevation: 15,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Styles.tertiaryColor,
                ),
                clipBehavior: Clip.none,
                child: Column(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: size.height <= 768 ? 3 : 1,
                        child: Image.asset(Assets.assetsImagesLogoAppLogo),
                      ),
                    ),
                    // const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 5),
                      child: Text(
                        category.categoryName,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
