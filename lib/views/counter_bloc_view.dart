import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_programming/controllers/counter_controller_bloc.dart';

class CounterBlocView extends StatelessWidget {
  const CounterBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterControllerBloc>.value(
      value: context.read<CounterControllerBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterControllerBloc, int>(
                builder: (context, state) {
                  return Text(
                    'Número actual: $state',
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () => context.read<CounterControllerBloc>().add(),
                child: const Text('Sumar'),
              ),
              ElevatedButton(
                onPressed: () =>
                    context.read<CounterControllerBloc>().subtract(),
                child: const Text('Restar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
