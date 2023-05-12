import 'package:flutter/material.dart';
import 'package:sabak21_weather_app_ui/constants/app_colors.dart';
import 'package:sabak21_weather_app_ui/constants/app_text_styles.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgr,
        title: const Center(
          child: Text('Тапшырма-09', style: AppTextStyles.titleStyle),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image/image.png.jpg',
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.near_me, color: AppColors.iconColor),
                  Icon(Icons.location_city, color: AppColors.iconColor),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                const Text('8', style: AppTextStyles.sanTextStyle),
                Image.asset(
                  'assets/image/weathercloud.png',
                  height: 130,
                  width: 130,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'You\'ll\n need\n and',
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Bishkek',
                style: TextStyle(color: Colors.white, fontSize: 80),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
