import 'package:counter_app_getx/counter_getx.dart';
import 'package:counter_app_getx/counter_defaulty.dart';
import 'package:counter_app_getx/counter_two_screen/counter_screen1.dart';
import 'package:counter_app_getx/counter_two_screen_getx/counter1.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterGetxScreen1(),
    );
  }
}
