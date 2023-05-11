import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/calculate_button.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/height.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/male_female.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/result_page.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/status_card.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/components/weight_age.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/constants/app_colors.dart';
import 'package:sabak_19_bmi_ulantuu3_akyrky/constants/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 60;
  int age = 23;
  double height = 180;
  void resultattar() {
    final res = weight / pow(height / 100, 2);
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      _showAlertDialog(context, 'Сиз арыксыз');
    } else if (res >= 18.6 && res >= 25) {
      // print('Сиз нормалдуусуз:$res');
      _showAlertDialog(context, 'Сиз нормалдуусуз');
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз ашыкча салмактуусуз:$res');
      _showAlertDialog(context, 'Сизде ашыкча салмак бар');
    } else {
      (res <= 30);
      // print('Сиз семизсиз:$res');
      _showAlertDialog(context, 'Сиз семизсиз,срочно арыктаныз');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgrColor,
        title: const Center(child: Text(AppTexts.bmi)),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 32, right: 21, bottom: 41),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                          print('object1');
                        });
                      },
                      child: MaleFemale(
                          icon: Icons.male,
                          text: AppTexts.male,
                          isTrue: isTrue),
                    ),
                  ),
                  const SizedBox(width: 35),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                          print('object2');
                        });
                      },
                      child: MaleFemale(
                          icon: Icons.female,
                          text: AppTexts.female,
                          isTrue: !isTrue),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            StatusCard(
              child: Height(
                text: AppTexts.height,
                text1: '${height.toInt()}',
                text2: 'cm',
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                height: height,
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.height,
                      san: '$weight',
                      removeBasuu: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '$age',
                      removeBasuu: () {
                        setState(() {
                          age--;
                        });
                      },
                      addBasuu: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onPressed: () {
          // resultattar();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(metri: height, salmak: weight),
            ),
          );
        },
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.cardcolor,
        title: const Text(AppTexts.bmi, textAlign: TextAlign.center),
        content: Text(text, textAlign: TextAlign.center),
        actions: <Widget>[
          TextButton(
            child: const Text('Чыгуу'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
