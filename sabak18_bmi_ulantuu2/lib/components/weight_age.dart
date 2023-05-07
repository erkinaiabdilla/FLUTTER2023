import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/circular_button.dart';
import 'package:sabak18_bmi_ulantuu2/constants/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addBasuu,
    required this.removeBasuu,
  });

  final String text;
  final String san;
  final void Function() addBasuu;
  final void Function() removeBasuu;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.titleStyle),
        Text(san, style: AppTextStyles.sanTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              basuu: removeBasuu,
            ),
            const SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
              basuu: addBasuu,
            ),
          ],
        )
      ],
    );
  }
}
