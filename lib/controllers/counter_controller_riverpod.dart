import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserModel {
  UserModel({
    required this.name,
    required this.age,
  });

  String name;
  int age;
}

class CounterControllerRiverpod extends StateNotifier<UserModel> {
  CounterControllerRiverpod() : super(UserModel(name: 'Juan', age: 0));

  int age = 0;
  void addAge() {
    age++;
    state = UserModel(name: state.name, age: age);
  }

  void subtractAge() {
    age--;
    state = UserModel(name: state.name, age: age);
  }

  void resetAge() {
    state = UserModel(name: state.name, age: 0);
  }
}
