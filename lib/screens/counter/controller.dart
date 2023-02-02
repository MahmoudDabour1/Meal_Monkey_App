import 'package:bloc/bloc.dart';
import 'package:engamrbakr/screens/counter/States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cache_Helper.dart';

class CounterController extends Cubit<CounterState> {
  int count = CacheHelper.getCounter();

  CounterController() : super(CounterInitialState());

  static CounterController getObject(context) {
    return BlocProvider.of(context);
  }

  void plus() {
    count++;
    CacheHelper.saveCounter(count);
    emit(CounterPlusState());
  }

  void minus() {
    count--;
    CacheHelper.saveCounter(count);
    emit(CounterMinusState());
  }
}
