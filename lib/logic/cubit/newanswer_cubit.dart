import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newanswer_state.dart';

class NewanswerCubit extends Cubit<NewanswerState> {
  NewanswerCubit() : super(NewanswerInitial());

  newAnswer(bool newAnswer) {
    emit(NewAnswer(newAnswer: newAnswer));
  }
}
