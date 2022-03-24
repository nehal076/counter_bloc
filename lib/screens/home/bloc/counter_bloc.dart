import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<AddCount>(_addCount);
  }

  _addCount(AddCount event, Emitter<CounterState> emit) {
    int counter = event.counterValue;
    counter++;
    emit(IncrementCount(counter));
  }
}
