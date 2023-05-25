import 'package:flutter/material.dart';
import 'package:flutter_reactive_programming/controllers/counter_controller_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberProvider = StateProvider((ref) => CounterControllerRiverpod());

class CounterRiverpodView extends ConsumerWidget {
  const CounterRiverpodView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<UserModel>(
              stream: ref.watch(numberProvider).stream,
              builder: (context, snapshot) {
                final number = snapshot.data;

                if (snapshot.hasData) {
                  return Text(
                    'Número actual: ${number!.age}',
                    style: const TextStyle(fontSize: 50),
                  );
                } else {
                  return const Text(
                    'Empty data',
                    style: TextStyle(fontSize: 50),
                  );
                }
              },
            ),
            ElevatedButton(
              onPressed: () =>
                  ref.read<CounterControllerRiverpod>(numberProvider).addAge(),
              child: const Text('Sumar'),
            ),
            ElevatedButton(
              onPressed: () => ref
                  .read<CounterControllerRiverpod>(numberProvider)
                  .resetAge(),
              child: const Text('Reset'),
            ),
            ElevatedButton(
              onPressed: () => ref
                  .read<CounterControllerRiverpod>(numberProvider)
                  .subtractAge(),
              child: const Text('Restar'),
            ),
          ],
        ),
      ),
    );
  }
}
