import 'package:flutter/material.dart';
import 'package:sabak16_bmi_and_snippets/constants/app_colors.dart';
import 'package:sabak16_bmi_and_snippets/constants/app_texts.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.cardcolor,
        child: Column(
          children: const [
            Icon(Icons.male),
            AppTexts.male,
          ],
        ),
      ),
    );
  }
}
