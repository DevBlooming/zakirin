import 'package:flutter/material.dart';
import 'package:zakirin/theme/pallete.dart';
import 'package:zakirin/widgets/azkar_card_item.dart';

class AzkarDetails extends StatelessWidget {
  final String appBarTitle;
  final List<Map<String, dynamic>>? azkarList;

  const AzkarDetails({
    super.key,
    required this.appBarTitle,
    required this.azkarList,
  });

  @override
  Widget build(BuildContext context) {
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
        itemCount: azkarList!.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AzkarCardItem(
                  content: azkarList![index]['content'].toString(),
                  count: azkarList![index]['count'],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
