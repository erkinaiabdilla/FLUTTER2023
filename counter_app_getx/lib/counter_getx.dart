import 'package:counter_app_getx/getx_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CounterGetX extends StatelessWidget {
  const CounterGetX({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('бюлд иштеди');

    final controller = Get.put(Controller());
    print(controller.count);
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
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
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
