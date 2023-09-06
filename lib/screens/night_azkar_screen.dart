import 'package:flutter/material.dart';
import 'package:zakirin/data/data.dart';
import 'package:zakirin/theme/pallete.dart';
import 'package:zakirin/widgets/azkar_card_box.dart';

class NightAzkarScreen extends StatelessWidget {
  final String appBarTitle;

  const NightAzkarScreen({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>>? nightAzkar = zakirinData[1]['nightAzkar'];

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
        itemCount: nightAzkar!.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AzkarCardBox(
                  content: nightAzkar[index]['content'].toString(),
                  count: nightAzkar[index]['count'],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
