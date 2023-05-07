import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/constants/app_colors.dart';
import 'package:sabak18_bmi_ulantuu2/constants/app_text_style.dart';
import 'package:sabak18_bmi_ulantuu2/constants/app_texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      color: AppColors.pinkcolor,
      child: const Center(
        child: Text(AppTexts.calculator, style: AppTextStyles.calculateStyle),
      ),
    );
  }
}
