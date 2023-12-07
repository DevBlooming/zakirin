import 'package:flutter/material.dart';
import 'package:zakirin/core/utils/styles.dart';
import 'package:zakirin/features/azkar/data/models/zikr_model.dart';
import 'package:zakirin/features/azkar/views/widgets/zikr_card.dart';

class AzkarDetailsView extends StatelessWidget {
  final String appBarTitle;
  final List<ZikrModel> azkarList;

  const AzkarDetailsView({
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
            color: Colors.white,
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
      body: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ZikrCard(
                  content: azkarList[index].content,
                  count: azkarList[index].count,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
