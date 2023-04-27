import 'package:flutter/material.dart';
import 'package:sabak15_quize_app/constants/app_colors.dart';
import 'package:sabak15_quize_app/constants/app_text_styles.dart';
import 'package:sabak15_quize_app/constants/texts.dart';
import 'package:sabak15_quize_app/useFile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void teksher(bool koldonuu) {
    bool correctAnswer = useQuize.joopAluu();
    setState(() {
      if (useQuize.isFinished() == true) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Test Quizeapp'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Your test has expired'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('No'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Yes'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        useQuize.indexZero();
        iconAluu = [];
      } else {
        if (correctAnswer == koldonuu) {
          iconAluu.add(
            const Icon(Icons.check, color: Colors.green),
          );
        } else {
          iconAluu.add(
            const Icon(Icons.close, color: Colors.red),
          );
        }
        useQuize.nextQuestion();
      }
    });
  }

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
              const Spacer(),
              Text(useQuize.surooAluu(), style: AppTextStyles.appTextStyle),
              const SizedBox(height: 102),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.trueBgrColor,
                  ),
                  onPressed: () {
                    setState(() {
                      teksher(true);
                    });
                  },
                  child: const Text(
                    AppTexts.yes,
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.falseBgrColor,
                  ),
                  onPressed: () {
                    teksher(false);
                  },
                  child: const Text(
                    AppTexts.no,
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 50,
                child: ListView.builder(
                    itemCount: iconAluu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return iconAluu[index];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
