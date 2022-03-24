part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class IncrementCount extends CounterState {
  final int counterValue;

  IncrementCount(this.counterValue);
}
