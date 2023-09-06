import 'package:flutter/material.dart';
import 'package:zakirin/data/data.dart';
import 'package:zakirin/theme/pallete.dart';
import 'package:zakirin/widgets/azkar_card_box.dart';

class MorningAzkarScreen extends StatelessWidget {
  final String appBarTitle;

  const MorningAzkarScreen({
    super.key,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>>? morningAzkar =
        zakirinData[0]['morningAzkar'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
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
      body: ListView.builder(
        itemCount: morningAzkar!.length,
        itemBuilder: (context, index) {
          String azkarContent = morningAzkar[index]['content'].toString();
          int azkarCount = morningAzkar[index]['count'];

          return SingleChildScrollView(
            child: Column(
              children: [
                AzkarCardBox(
                  content: azkarContent,
                  count: azkarCount,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
