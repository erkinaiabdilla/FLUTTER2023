import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1;
  int secondDice = 1;
  void change() {
    setState(() {
      secondDice = Random().nextInt(6) + 1;
      firstDice = Random().nextInt(6) + 1;
    });
    print(firstDice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffE93B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          "Тапшырма 5",
          style: TextStyle(color: Colors.black),
        )),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (firstDice == 5 || secondDice == 5)  
            Container(
              height: 30,
              width: 100,
              color: Colors.pink,
              child: Center(
                child: const Text(
                  "Kyrgyzstan",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child:
                            Image.asset('images/dice/dice$firstDice-png.png'))),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          change();
                        },
                        child: Image.asset(
                            'images/dice/dice$secondDice-png.png'))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
