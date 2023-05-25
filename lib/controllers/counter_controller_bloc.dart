import 'package:flutter_bloc/flutter_bloc.dart';

class CounterControllerBloc extends Cubit<int> {
  CounterControllerBloc() : super(0);

  void add() => emit(state + 1);

  void subtract() => emit(state - 1);

  void reset() => emit(0);
}
