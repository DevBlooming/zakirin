import 'package:flutter/material.dart';
import 'package:zakirin/theme/pallete.dart';

class AzkarMenuCard extends StatelessWidget {
  final String title;
  final Widget azkarScreenType;

  const AzkarMenuCard({
    super.key,
    required this.title,
    required this.azkarScreenType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      // decoration: BoxDecoration(
      //   color: Palette.cardBackgroundColor,
      //   borderRadius: BorderRadius.circular(15),
      // ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => azkarScreenType,
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
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Palette.whiteColor,
          ),
        ),
      ),
    );

    // return InkWell(
    //   onTap: () {
    //     Navigator.of(context).push(
    //       MaterialPageRoute(
    //         builder: (context) => azkarScreenType,
    //       ),
    //     );
    //   },
    //   child: Container(
    //     padding: const EdgeInsets.all(20.0),
    //     margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    //     decoration: BoxDecoration(
    //       color: Palette.cardBackgroundColor,
    //       borderRadius: BorderRadius.circular(15),
    //     ),
    //     child: Center(
    //       child: Text(
    //         title,
    //         style: const TextStyle(
    //           fontSize: 24,
    //           fontWeight: FontWeight.bold,
    //           color: Palette.whiteColor,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
