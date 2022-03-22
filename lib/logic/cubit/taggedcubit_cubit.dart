import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'taggedcubit_state.dart';

class TaggedcubitCubit extends Cubit<TaggedcubitState> {
  TaggedcubitCubit() : super(TaggedcubitInitial());

  taggedToggle(bool tagged) {
    emit(Tagged(tagged: true));
  }
}
