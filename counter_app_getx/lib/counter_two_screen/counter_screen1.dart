import 'package:counter_app_getx/counter_two_screen/counter_screen2.dart';
import 'package:flutter/material.dart';

class CounterScreen1 extends StatefulWidget {
  const CounterScreen1({
    super.key,
  });

  @override
  State<CounterScreen1> createState() => _CounterScreen1State();
}

class _CounterScreen1State extends State<CounterScreen1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('бюлд иштеди');
    print(_counter);
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
            ElevatedButton(
              onPressed: () async {
                final value = await Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterScreen2(
                      counter: _counter,
                    ),
                  ),
                );
                _counter = value ?? 0;
                setState(() {});
              },
              child: const Text('To second page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
