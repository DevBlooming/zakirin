import 'package:flutter/material.dart';
import 'package:zakirin/screens/azkar_screen.dart';
import 'package:zakirin/theme/pallete.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ذَّاكِرِينَ',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Palette.whiteColor,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Palette.darkSkies1,
                Palette.darkSkies2,
              ],
            ),
          ),
        ),
      ),
      // body: const MorningAzkarScreen(),
      body: const AzkarScreen(),
    );
  }
}
