import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/constants/app_colors.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/constants/app_text_style.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/constants/app_texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkcolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        minimumSize: const Size(double.infinity, 73),
      ),
      onPressed: onPressed,
      child: const Text(
        AppTexts.calculator,
        style: AppTextStyles.calculateStyle,
      ),
    );
  }
}
