import 'package:get/get.dart';

class CounterControllerGetx extends GetxController {
  final RxInt _number = RxInt(0);

  void add() {
    _number.value++;
  }

  void subtract() {
    _number.value--;
  }

  int get number => _number.value;
}
