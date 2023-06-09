import 'package:flutter/material.dart';
import 'package:sabak17_bmi_ulantuu/constants/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80),
            // жогорудан келген айкон,жогоруда сонструктору тузулгон
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            // жогорудан келген текст,жогоруда конструктору тузулгон
          ],
        ),
      ),
    );
  }
}
