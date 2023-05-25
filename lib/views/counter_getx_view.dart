import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterGetXView extends StatelessWidget {
  CounterGetXView({super.key});

  // final _controller = Get.put(CounterControllerGetx());
  // final _controller = CounterControllerGetx();
  RxInt _number = RxInt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Número actual: ${_number.value}',
                  style: const TextStyle(fontSize: 50),
                )),
            ElevatedButton(
              onPressed: () => _number++,
              child: const Text('Sumar'),
            ),
            ElevatedButton(
              onPressed: () => _number--,
              child: const Text('Restar'),
            ),
          ],
        ),
      ),
    );
  }
}
