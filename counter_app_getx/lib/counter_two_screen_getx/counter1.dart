import 'package:counter_app_getx/counter_two_screen/counter_screen2.dart';
import 'package:counter_app_getx/counter_two_screen_getx/counter2.dart';
import 'package:counter_app_getx/getx_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterGetxScreen1 extends StatelessWidget {
  const CounterGetxScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    print(controller.count);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Obx(
          () => Text(
            '${controller.count}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Navigator.push<int>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterGetxScreen2(),
                  ),
                );
              },
              child: const Text('To SecondGETX page'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
