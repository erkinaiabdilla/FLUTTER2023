import 'package:flutter/material.dart';

import 'counter_screen1.dart';

class CounterScreen2 extends StatefulWidget {
  CounterScreen2({super.key, required this.counter});
  int counter;
  @override
  State<CounterScreen2> createState() => _CounterScreen2State();
}

class _CounterScreen2State extends State<CounterScreen2> {
  void degrement() {
    setState(() {
      widget.counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, widget.counter);
              },
              child: const Text('To first page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          degrement();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
