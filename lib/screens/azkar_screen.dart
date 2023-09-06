import 'package:flutter/material.dart';
import 'package:zakirin/screens/morning_azkar_screen.dart';
import 'package:zakirin/screens/night_azkar_screen.dart';
import 'package:zakirin/widgets/azkar_menu_card.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: size.width <= 768 ? 1 : 5,
        ),
        shrinkWrap: true,
        children: const [
          AzkarMenuCard(
            title: 'أذكار الصباح',
            azkarScreenType: MorningAzkarScreen(
              appBarTitle: 'أذكار الصباح',
            ),
          ),
          AzkarMenuCard(
            title: 'أذكار المساء',
            azkarScreenType: NightAzkarScreen(
              appBarTitle: 'أذكار المساء',
            ),
          ),
        ],
      ),
    );
  }
}
