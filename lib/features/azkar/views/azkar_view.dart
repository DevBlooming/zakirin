import 'package:flutter/material.dart';
import 'package:zakirin/core/helpers/custom_app_bar.dart';
import 'package:zakirin/core/utils/constants.dart';
import 'package:zakirin/features/azkar/views/widgets/azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Constants.azkarSectionTitle),
      body: const AzkarViewBody(),
    );
  }
}
