import 'package:flutter/material.dart';

class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              //контейнер басылыш учун
              onTap: () {
                //сетстейт абалды озгортту бюлд методду чакырды
                setState(() {
                  isTrue = true;
                  print(isTrue);
                });
              },
              child: Container(
                  width: 50,
                  height: 50,
                  color: isTrue ? Colors.red : Colors.green),
            ),
            const SizedBox(height: 20),
            InkWell(
              //контейнер басылыш учун
              onTap: () {
                setState(() {
                  isTrue = false;
                  print(isTrue);
                });
              },
              child: Container(
                  width: 50,
                  height: 50,
                  color: !isTrue ? Colors.red : Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
