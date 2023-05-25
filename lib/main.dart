import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_reactive_programming/controllers/counter_controller_bloc.dart';
import 'package:flutter_reactive_programming/controllers/counter_controller_getx.dart';
import 'package:flutter_reactive_programming/views/counter_getx_view.dart';
import 'package:get/get.dart';

void main() {
  // Stream
  // runApp(const MyApp());

  // GetX
  Get.lazyPut(() => CounterControllerGetx());
  runApp(const MyApp());

  // Riverpod
  // runApp(const ProviderScope(child: MyApp()));

  // Bloc
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CounterControllerBloc>(
        create: (context) => CounterControllerBloc(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterGetXView(),
    );
  }
}
