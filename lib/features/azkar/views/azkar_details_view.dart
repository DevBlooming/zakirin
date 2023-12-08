import 'package:flutter/material.dart';
import 'package:zakirin/core/helpers/custom_app_bar.dart';
import 'package:zakirin/features/azkar/data/models/zikr_model.dart';
import 'package:zakirin/features/azkar/views/widgets/azkar_item.dart';

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
      appBar: customAppBar(appBarTitle),
      body: ListView.builder(
        itemCount: azkarList.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AzkarItem(
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
