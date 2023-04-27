import 'package:flutter/material.dart';
import 'package:sabak14_quize_app/constants/app_colors.dart';
import 'package:sabak14_quize_app/constants/app_text_styles.dart';
import 'package:sabak14_quize_app/constants/texts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text('Тапшырма 7', style: AppTextStyles.appBarTextStyle),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1527838832700-5059252407fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aXNsYW1pY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.none),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Is happiness in Islam?',
                  style: AppTextStyles.appTextStyle),
              const SizedBox(height: 102),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.trueBgrColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    AppTexts.yes,
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.falseBgrColor,
                  ),
                  onPressed: () {},
                  child: const Text(
                    AppTexts.no,
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.green, size: 40),
                  Icon(Icons.close, color: Colors.red, size: 40),
                ],
              )
              // SizedBox(
              //  height: 50,
//child: ListView.builder(
              //     itemCount: 10,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //        return a ? Icon(Icons.check) : Icon(Icons.close);
              //     }),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
