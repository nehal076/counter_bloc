part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class AddCount extends CounterEvent {
  final int counterValue;

  AddCount(this.counterValue);
}
